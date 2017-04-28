function[y_0,para]=initial(flag)
   %% 
   para.DOF  = 3;%domain of freedom
   para.lx   = 10;%lx : the length of the statevector of a single agent
   para.lz   = 6;
   para.ly   = para.lx+para.lz;
   para.lu   = 3;%lu : the length of the control input to a single agent
   para.lf   = 6;%lf : the length of the formation vector of a single agent
   para.flag = flag;
   para.g    = 9.8;
   %%
   if para.flag == 0
          y1  = [1.5   0    1.2  1  0   1 0 0 0   1  8 0 0 0   1    1*9.8];
          y2  = [-1.5  1    1    0  .5  0 0 0 0   1  8 0 0 0   1    1*9.8];
          y3  = [-1   -1.5  1    0  1   0 0 0 0 1.5  8 0 0 0 1.5  1.5*9.8];
%           y1  = [1.5   0    1.1  1  0   1 0 0 0 0.9  8 0 0 0  0    0];
%           y2  = [-1.5  1    1    0  .5  0 0 0 0   1  8 0 0 0  0    0];
%           y3  = [-1   -1.5  1    0  1   0 0 0 0 1.5  8 0 0 0  0    0];         
          para.n = 3;  %number of multi-agents
          y_0    = [y1 y2 y3];
          para.L = [1  0 -1;
                   -1  1  0;
                    0 -1  1];
          para.str = 'circle'
          
   elseif para.flag == 1
          y1  = [.3  .3  .8  0  0  1 0 0 0   1  8 0 0 0   1    1*9.8];
          y2  = [.4  .3   1  0  0  0 0 0 0   1  8 0 0 0   1    1*9.8];
          y3  = [.3  .4  .8  0  0  0 0 0 0 1.5  8 0 0 0 1.5  1.5*9.8];
%           y1  = [.3  .3  .8  0  0  2 0 0 0 0.9  8 0 0 0   0    0];
%           y2  = [.4  .3   1  0  0  0 0 0 0   1  8 0 0 0   0    0];
%           y3  = [.3  .4  .8  0  0  0 0 0 0 1.5  8 0 0 0   0    0];
          para.n = 3;  %number of multi-agents
          y_0    = [y1 y2 y3];
          para.L = [1  0 -1;
                   -1  1  0;
                    0 -1  1];
          para.str = 'parabolic'
          
   elseif para.flag == 2
          y1  = [0.5   0.5  0.5   1.0   1   1 0 0 0    2  8 0 0 0   2    2*9.8];
          y2  = [0.0  -1.3  1.0  -1.0   1   2 0 0 0    1  8 0 0 0   1    1*9.8];
          y3  = [1.3  -1.0  -.5  -2.0   3   1 0 0 0  1.5  8 0 0 0 1.5  1.5*9.8];
          y4  = [1.0     1  1.5   2.0  -3   2 0 0 0  1.8  8 0 0 0 1.8  1.8*9.8];
          y5  = [0.8  -1.3   -1  -3.0   3  -1 0 0 0  0.9  8 0 0 0 0.9  0.9*9.8];
          y6  = [0.0   1.3   -2  -1.0  -2  -1 0 0 0  1.6  8 0 0 0 1.6  1.6*9.8];
          y7  = [1.3     0   -2   2.0  -3 1.5 0 0 0  2.5  8 0 0 0 2.5  2.5*9.8];
%           y1  = [0.5   0.5  0.5   1.0   1   1 0 0 0    2  8 0 0 0  0    0];
%           y2  = [0.0  -1.5  1.0  -1.0   1   2 0 0 0    1  8 0 0 0  0    0];
%           y3  = [1.5  -2.0  -.5  -2.0   3   1 0 0 0  1.5  8 0 0 0  0    0];
%           y4  = [3.0     1  1.5   2.0  -3   2 0 0 0  1.8  8 0 0 0  0    0];
%           y5  = [0.8  -1.5   -1  -3.0   3  -1 0 0 0  0.9  8 0 0 0  0    0];
%           y6  = [0.0   2.5   -2  -1.0  -2  -1 0 0 0  1.8  8 0 0 0  0    0];
%           y7  = [1.8     0   -2   2.0  -3 1.5 0 0 0  2.5  8 0 0 0  0    0];
          %y=[x,y,z,dotx,doty,dotz,phi,theta,psi,m,thrust,ts,a];

          para.n = 7;  %number of multi-agents
          y_0    = [y1 y2 y3 y4 y5 y6 y7];
          para.L = [2 -1 -1  0  0  0  0;
                    0  2 -1 -1  0  0  0;
                    0  0  2 -1 -1  0  0;
                    0  0  0  2 -1 -1  0;
                    0  0  0  0  2 -1 -1;
                   -1  0  0  0  0  2 -1;
                   -1 -1  0  0  0  0  2];
          para.str = 'consensus'
                  
   end

end
