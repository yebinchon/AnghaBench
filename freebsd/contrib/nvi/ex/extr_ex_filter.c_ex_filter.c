
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
typedef scalar_t__ pid_t ;
typedef enum filtertype { ____Placeholder_filtertype } filtertype ;
struct TYPE_28__ {scalar_t__ lno; } ;
struct TYPE_27__ {int ep; int * rptlines; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ MARK ;
typedef int FILE ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int CUT_LINEMODE ;
 int FILTER_BANG ;
 int FILTER_RBANG ;
 int FILTER_READ ;
 int FILTER_WRITE ;
 int F_CLR (int ,int ) ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int F_MULTILOCK ;
 int F_SET (int ,int ) ;
 int INT2CHAR (TYPE_1__*,int *,scalar_t__,char*,size_t) ;
 size_t L_ADDED ;
 int M_SYSERR ;
 int O_SHELL ;
 char* O_STR (TYPE_1__*,int ) ;
 int SC_VI ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ STRLEN (int *) ;
 int _exit (int) ;
 int close (int) ;
 int cut (TYPE_1__*,int *,TYPE_2__*,TYPE_2__*,int ) ;
 int db_exist (TYPE_1__*,int) ;
 int del (TYPE_1__*,TYPE_2__*,TYPE_2__*,int) ;
 int dup2 (int,int ) ;
 scalar_t__ ex_readfp (TYPE_1__*,char*,int *,TYPE_2__*,scalar_t__*,int) ;
 int ex_writefp (TYPE_1__*,char*,int *,TYPE_2__*,TYPE_2__*,int *,int *,int) ;
 int execl (char*,char*,char*,char*,char*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int filter_ldisplay (TYPE_1__*,int *) ;
 scalar_t__ fork () ;
 int msgq (TYPE_1__*,int ,char*) ;
 int msgq_str (TYPE_1__*,int ,char*,char*) ;
 scalar_t__ opts_empty (TYPE_1__*,int ,int ) ;
 scalar_t__ pipe (int*) ;
 scalar_t__ proc_wait (TYPE_1__*,long,char*,int,int) ;
 char* strrchr (char*,char) ;
 scalar_t__ vfork () ;

int
ex_filter(SCR *sp, EXCMD *cmdp, MARK *fm, MARK *tm, MARK *rp, CHAR_T *cmd, enum filtertype ftype)
{
 FILE *ifp, *ofp;
 pid_t parent_writer_pid, utility_pid;
 recno_t nread;
 int input[2], output[2], rval;
 char *name;
 char *np;
 size_t nlen;

 rval = 0;


 *rp = *fm;
 if (rp->lno == 0)
  rp->lno = 1;


 if (opts_empty(sp, O_SHELL, 0))
  return (1);
 ofp = ((void*)0);
 input[0] = input[1] = output[0] = output[1] = -1;
 if (ftype != FILTER_READ && pipe(input) < 0) {
  msgq(sp, M_SYSERR, "pipe");
  goto err;
 }


 if (pipe(output) < 0) {
  msgq(sp, M_SYSERR, "pipe");
  goto err;
 }
 if ((ofp = fdopen(output[0], "r")) == ((void*)0)) {
  msgq(sp, M_SYSERR, "fdopen");
  goto err;
 }


 switch (utility_pid = vfork()) {
 case -1:
  msgq(sp, M_SYSERR, "vfork");
err: if (input[0] != -1)
   (void)close(input[0]);
  if (input[1] != -1)
   (void)close(input[1]);
  if (ofp != ((void*)0))
   (void)fclose(ofp);
  else if (output[0] != -1)
   (void)close(output[0]);
  if (output[1] != -1)
   (void)close(output[1]);
  return (1);
 case 0:
  if (input[0] != -1)
   (void)dup2(input[0], STDIN_FILENO);
  (void)dup2(output[1], STDOUT_FILENO);
  (void)dup2(output[1], STDERR_FILENO);


  if (input[0] != -1)
   (void)close(input[0]);
  if (input[1] != -1)
   (void)close(input[1]);
  (void)close(output[0]);
  (void)close(output[1]);

  if ((name = strrchr(O_STR(sp, O_SHELL), '/')) == ((void*)0))
   name = O_STR(sp, O_SHELL);
  else
   ++name;

  INT2CHAR(sp, cmd, STRLEN(cmd)+1, np, nlen);
  execl(O_STR(sp, O_SHELL), name, "-c", np, (char *)((void*)0));
  msgq_str(sp, M_SYSERR, O_STR(sp, O_SHELL), "execl: %s");
  _exit (127);

 default:

  if (input[0] != -1)
   (void)close(input[0]);
  (void)close(output[1]);
  break;
 }
 if (ftype == FILTER_RBANG || ftype == FILTER_READ) {
  if (ftype == FILTER_RBANG)
   (void)close(input[1]);

  if (ex_readfp(sp, "filter", ofp, fm, &nread, 1))
   rval = 1;
  sp->rptlines[L_ADDED] += nread;
  if (ftype == FILTER_READ)
   if (fm->lno == 0)
    rp->lno = nread;
   else
    rp->lno += nread;
  goto uwait;
 }
 F_SET(sp->ep, F_MULTILOCK);
 switch (parent_writer_pid = fork()) {
 case -1:
  msgq(sp, M_SYSERR, "fork");
  (void)close(input[1]);
  (void)close(output[0]);
  rval = 1;
  break;
 case 0:




  (void)close(output[0]);
  if ((ifp = fdopen(input[1], "w")) == ((void*)0))
   _exit (1);
  _exit(ex_writefp(sp, "filter", ifp, fm, tm, ((void*)0), ((void*)0), 1));


 default:
  (void)close(input[1]);
  if (ftype == FILTER_WRITE) {




   if (filter_ldisplay(sp, ofp))
    rval = 1;
  } else {





   if (ex_readfp(sp, "filter", ofp, tm, &nread, 1))
    rval = 1;
   sp->rptlines[L_ADDED] += nread;
  }


  if (proc_wait(sp,
      (long)parent_writer_pid, "parent-writer", 0, 1))
   rval = 1;


  if (rval == 0 && ftype == FILTER_BANG &&
      (cut(sp, ((void*)0), fm, tm, CUT_LINEMODE) ||
      del(sp, fm, tm, 1))) {
   rval = 1;
   break;
  }






   if (rp->lno > 1 && !db_exist(sp, rp->lno))
   --rp->lno;
  break;
 }
 F_CLR(sp->ep, F_MULTILOCK);






uwait: INT2CHAR(sp, cmd, STRLEN(cmd) + 1, np, nlen);
 return (proc_wait(sp, (long)utility_pid, np,
     ftype == FILTER_READ && F_ISSET(sp, SC_VI) ? 1 : 0, 0) || rval);
}
