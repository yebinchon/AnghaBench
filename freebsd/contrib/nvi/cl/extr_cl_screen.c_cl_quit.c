
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int orig; } ;
typedef int GS ;
typedef TYPE_1__ CL_PRIVATE ;


 int CL_SCR_EX_INIT ;
 int CL_SCR_VI_INIT ;
 int CL_STDIN_TTY ;
 int F_CLR (TYPE_1__*,int) ;
 scalar_t__ F_ISSET (TYPE_1__*,int) ;
 TYPE_1__* GCLP (int *) ;
 int STDIN_FILENO ;
 int TCSADRAIN ;
 int TCSASOFT ;
 scalar_t__ cl_ex_end (int *) ;
 scalar_t__ cl_term_end (int *) ;
 scalar_t__ cl_vi_end (int *) ;
 int tcsetattr (int ,int,int *) ;

int
cl_quit(GS *gp)
{
 CL_PRIVATE *clp;
 int rval;

 rval = 0;
 clp = GCLP(gp);





 if (!F_ISSET(clp, CL_SCR_EX_INIT | CL_SCR_VI_INIT))
  return (0);


 if (cl_term_end(gp))
  rval = 1;


 if (F_ISSET(clp, CL_STDIN_TTY) &&
     F_ISSET(clp, CL_SCR_VI_INIT) && cl_vi_end(gp))
  rval = 1;


 if (F_ISSET(clp, CL_STDIN_TTY) &&
     F_ISSET(clp, CL_SCR_EX_INIT) && cl_ex_end(gp))
  rval = 1;
 (void)tcsetattr(STDIN_FILENO, TCSADRAIN | TCSASOFT, &clp->orig);

 F_CLR(clp, CL_SCR_EX_INIT | CL_SCR_VI_INIT);
 return (rval);
}
