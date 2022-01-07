
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int c_lflag; int c_oflag; int c_iflag; } ;
struct TYPE_5__ {TYPE_2__ ex_enter; TYPE_2__ orig; int * rmso; int * smso; int * cuu1; int * el; int * cup; } ;
typedef int SCR ;
typedef TYPE_1__ CL_PRIVATE ;


 TYPE_1__* CLP (int *) ;
 int CL_SCR_EX_INIT ;
 int CL_STDIN_TTY ;
 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOK ;
 int ECHOKE ;
 scalar_t__ EINTR ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int ISIG ;
 int M_SYSERR ;
 int ONLCR ;
 int OPOST ;
 int STDIN_FILENO ;
 int TCSADRAIN ;
 int TCSASOFT ;
 int cl_getcap (int *,char*,int **) ;
 scalar_t__ errno ;
 int free (int *) ;
 int msgq (int *,int ,char*) ;
 scalar_t__ tcsetattr (int ,int,TYPE_2__*) ;

__attribute__((used)) static int
cl_ex_init(SCR *sp)
{
 CL_PRIVATE *clp;

 clp = CLP(sp);


 if (F_ISSET(clp, CL_SCR_EX_INIT))
  goto fast;


 if (!F_ISSET(clp, CL_STDIN_TTY))
  return (0);


 (void)cl_getcap(sp, "cup", &clp->cup);
 (void)cl_getcap(sp, "smso", &clp->smso);
 (void)cl_getcap(sp, "rmso", &clp->rmso);
 (void)cl_getcap(sp, "el", &clp->el);
 (void)cl_getcap(sp, "cuu1", &clp->cuu1);


 if (clp->smso == ((void*)0) || clp->rmso == ((void*)0)) {
  if (clp->smso != ((void*)0)) {
   free(clp->smso);
   clp->smso = ((void*)0);
  }
  if (clp->rmso != ((void*)0)) {
   free(clp->rmso);
   clp->rmso = ((void*)0);
  }
 }
 clp->ex_enter = clp->orig;
 clp->ex_enter.c_lflag |= ECHO | ECHOE | ECHOK | ICANON | IEXTEN | ISIG;






 clp->ex_enter.c_iflag |= ICRNL;
 clp->ex_enter.c_oflag |= OPOST;




fast: if (tcsetattr(STDIN_FILENO, TCSADRAIN | TCSASOFT, &clp->ex_enter)) {
  if (errno == EINTR)
   goto fast;
  msgq(sp, M_SYSERR, "tcsetattr");
  return (1);
 }
 return (0);
}
