
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_23__ {TYPE_1__* cmd; } ;
struct TYPE_22__ {int (* scr_child ) (TYPE_2__*) ;int (* scr_attr ) (TYPE_2__*,int ,int ) ;scalar_t__ (* scr_screen ) (TYPE_2__*,int ) ;} ;
struct TYPE_21__ {TYPE_3__* gp; } ;
struct TYPE_20__ {int name; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;
typedef TYPE_4__ EXCMD ;


 int EXM_NOCANON ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int) ;
 int M_SYSERR ;
 int O_SHELL ;
 char* O_STR (TYPE_2__*,int ) ;
 int SA_ALTERNATE ;
 int SC_EX ;
 int SC_SCR_EX ;
 int SC_SCR_EXWROTE ;
 int SC_VI ;
 int _exit (int) ;
 int ex_fflush (TYPE_2__*) ;
 int ex_puts (TYPE_2__*,char const*) ;
 int ex_wemsg (TYPE_2__*,int ,int ) ;
 int execl (char*,char const*,char*,char*,char*) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int msgq_str (TYPE_2__*,int ,char*,char*) ;
 scalar_t__ opts_empty (TYPE_2__*,int ,int ) ;
 int proc_wait (TYPE_2__*,long,char*,int ,int ) ;
 char* strrchr (char*,char) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,int ,int ) ;
 int stub3 (TYPE_2__*) ;
 scalar_t__ vfork () ;

int
ex_exec_proc(SCR *sp, EXCMD *cmdp, char *cmd, const char *msg, int need_newline)
{
 GS *gp;
 const char *name;
 pid_t pid;

 gp = sp->gp;


 if (opts_empty(sp, O_SHELL, 0))
  return (1);


 if (F_ISSET(sp, SC_VI)) {
  if (gp->scr_screen(sp, SC_EX)) {
   ex_wemsg(sp, cmdp->cmd->name, EXM_NOCANON);
   return (1);
  }
  (void)gp->scr_attr(sp, SA_ALTERNATE, 0);
  F_SET(sp, SC_SCR_EX | SC_SCR_EXWROTE);
 }


 if (need_newline)
  (void)ex_puts(sp, "\n");
 if (msg != ((void*)0)) {
  (void)ex_puts(sp, msg);
  (void)ex_puts(sp, "\n");
 }
 (void)ex_fflush(sp);

 switch (pid = vfork()) {
 case -1:
  msgq(sp, M_SYSERR, "vfork");
  return (1);
 case 0:
  if (gp->scr_child)
   gp->scr_child(sp);
  if ((name = strrchr(O_STR(sp, O_SHELL), '/')) == ((void*)0))
   name = O_STR(sp, O_SHELL);
  else
   ++name;
  execl(O_STR(sp, O_SHELL), name, "-c", cmd, (char *)((void*)0));
  msgq_str(sp, M_SYSERR, O_STR(sp, O_SHELL), "execl: %s");
  _exit(127);

 default:
  return (proc_wait(sp, (long)pid, cmd, 0, 0));
 }

}
