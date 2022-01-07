
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_19__ {int c_iflag; void** c_cc; int c_lflag; } ;
struct TYPE_16__ {int c_iflag; } ;
struct TYPE_18__ {TYPE_4__ vi_enter; TYPE_1__ orig; int ti_te; } ;
struct TYPE_17__ {int * gp; } ;
typedef TYPE_2__ SCR ;
typedef int GS ;
typedef TYPE_3__ CL_PRIVATE ;


 TYPE_3__* CLP (TYPE_2__*) ;
 int CL_SCR_VI_INIT ;
 int CL_STDIN_TTY ;
 scalar_t__ EINTR ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int ISIG ;
 int IXOFF ;
 int IXON ;
 int M_ERR ;
 int M_SYSERR ;
 int O_COLUMNS ;
 int O_LINES ;
 char* O_STR (TYPE_2__*,int ) ;
 int O_TERM ;
 scalar_t__ O_VAL (TYPE_2__*,int ) ;
 int SIGTSTP ;
 int SIG_DFL ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TCSADRAIN ;
 int TCSASOFT ;
 int TI_SENT ;
 int TRUE ;
 size_t VDISCARD ;
 size_t VDSUSP ;
 size_t VLNEXT ;
 size_t VQUIT ;
 size_t VSTATUS ;
 size_t VSUSP ;
 void* _POSIX_VDISABLE ;
 int cl_putenv (char*,char*,int ) ;
 scalar_t__ cl_term_init (TYPE_2__*) ;
 int cl_vi_end (int *) ;
 int cur_term ;
 int del_curterm (int ) ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 int idlok (int ,int) ;
 int isatty (int ) ;
 int keypad (int ,int ) ;
 int msgq (TYPE_2__*,int ,char*,...) ;
 int * newterm (char*,int ,int ) ;
 int noecho () ;
 int nonl () ;
 scalar_t__ opts_empty (TYPE_2__*,int ,int ) ;
 int raw () ;
 int sig_init (int *,TYPE_2__*) ;
 int signal (int ,int ) ;
 int stdin ;
 int stdout ;
 int stdscr ;
 scalar_t__ tcgetattr (int ,TYPE_4__*) ;
 scalar_t__ tcsetattr (int ,int,TYPE_4__*) ;
 int unsetenv (char*) ;

__attribute__((used)) static int
cl_vi_init(SCR *sp)
{
 CL_PRIVATE *clp;
 GS *gp;
 char *o_cols, *o_lines, *o_term, *ttype;

 gp = sp->gp;
 clp = CLP(sp);


 if (F_ISSET(clp, CL_SCR_VI_INIT))
  goto fast;


 if (!F_ISSET(clp, CL_STDIN_TTY) || !isatty(STDOUT_FILENO)) {
  msgq(sp, M_ERR,
      "016|Vi's standard input and output must be a terminal");
  return (1);
 }


 if (opts_empty(sp, O_TERM, 0))
  return (1);
 ttype = O_STR(sp, O_TERM);
 o_term = getenv("TERM");
 cl_putenv("TERM", ttype, 0);
 o_lines = getenv("LINES");
 cl_putenv("LINES", ((void*)0), (u_long)O_VAL(sp, O_LINES));
 o_cols = getenv("COLUMNS");
 cl_putenv("COLUMNS", ((void*)0), (u_long)O_VAL(sp, O_COLUMNS));





 (void)del_curterm(cur_term);





 errno = 0;
 if (newterm(ttype, stdout, stdin) == ((void*)0)) {
  if (errno)
   msgq(sp, M_SYSERR, "%s", ttype);
  else
   msgq(sp, M_ERR, "%s: unknown terminal type", ttype);
  return (1);
 }

 if (o_term == ((void*)0))
  unsetenv("TERM");
 if (o_lines == ((void*)0))
  unsetenv("LINES");
 if (o_cols == ((void*)0))
  unsetenv("COLUMNS");







 (void)sig_init(sp->gp, sp);
 noecho();
 nonl();
 raw();
 idlok(stdscr, 1);


 (void)keypad(stdscr, TRUE);






 clp->ti_te = TI_SENT;
 (void)signal(SIGTSTP, SIG_DFL);
 if (tcgetattr(STDIN_FILENO, &clp->vi_enter)) {
  msgq(sp, M_SYSERR, "tcgetattr");
  goto err;
 }
 if (clp->orig.c_iflag & IXON)
  clp->vi_enter.c_iflag |= IXON;
 if (clp->orig.c_iflag & IXOFF)
  clp->vi_enter.c_iflag |= IXOFF;

 clp->vi_enter.c_lflag |= ISIG;



 clp->vi_enter.c_cc[VQUIT] = _POSIX_VDISABLE;
 clp->vi_enter.c_cc[VSUSP] = _POSIX_VDISABLE;
 if (cl_term_init(sp))
  goto err;

fast:
 if (tcsetattr(STDIN_FILENO, TCSASOFT | TCSADRAIN, &clp->vi_enter)) {
  if (errno == EINTR)
   goto fast;
  msgq(sp, M_SYSERR, "tcsetattr");
err: (void)cl_vi_end(sp->gp);
  return (1);
 }
 return (0);
}
