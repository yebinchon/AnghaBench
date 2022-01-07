
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dname; int to_fd; int from_fd; void* from_fp; void* to_fp; int pid; } ;
typedef int SCR ;
typedef TYPE_1__ CSC ;


 int CSCOPE_CMD_FMT ;
 int M_SYSERR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_BSHELL ;
 int _exit (int) ;
 int asprintf (char**,int ,char*,char*) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int execl (int ,char*,char*,char*,char*) ;
 void* fdopen (int,char*) ;
 int free (char*) ;
 int msgq (int *,int ,char*) ;
 int msgq_str (int *,int ,char*,char*) ;
 scalar_t__ pipe (int*) ;
 char* quote (char*) ;
 int vfork () ;

__attribute__((used)) static int
run_cscope(SCR *sp, CSC *csc, char *dbname)
{
 int to_cs[2], from_cs[2];
 char *cmd;





 to_cs[0] = to_cs[1] = from_cs[0] = from_cs[1] = -1;
 if (pipe(to_cs) < 0 || pipe(from_cs) < 0) {
  msgq(sp, M_SYSERR, "pipe");
  goto err;
 }
 switch (csc->pid = vfork()) {
  char *dn, *dbn;
 case -1:
  msgq(sp, M_SYSERR, "vfork");
err: if (to_cs[0] != -1)
   (void)close(to_cs[0]);
  if (to_cs[1] != -1)
   (void)close(to_cs[1]);
  if (from_cs[0] != -1)
   (void)close(from_cs[0]);
  if (from_cs[1] != -1)
   (void)close(from_cs[1]);
  return (1);
 case 0:
  (void)dup2(to_cs[0], STDIN_FILENO);
  (void)dup2(from_cs[1], STDOUT_FILENO);
  (void)dup2(from_cs[1], STDERR_FILENO);


  (void)close(to_cs[1]);
  (void)close(from_cs[0]);



  if ((dn = quote(csc->dname)) == ((void*)0))
   goto nomem;
  if ((dbn = quote(dbname)) == ((void*)0)) {
   free(dn);
   goto nomem;
  }
  (void)asprintf(&cmd, "cd %s && exec cscope -dl -f %s", dn, dbn);
  free(dbn);
  free(dn);
  if (cmd == ((void*)0)) {
nomem: msgq(sp, M_SYSERR, ((void*)0));
   _exit (1);
  }
  (void)execl(_PATH_BSHELL, "sh", "-c", cmd, (char *)((void*)0));
  msgq_str(sp, M_SYSERR, cmd, "execl: %s");
  free(cmd);
  _exit (127);

 default:

  (void)close(to_cs[0]);
  (void)close(from_cs[1]);





  csc->to_fd = to_cs[1];
  csc->to_fp = fdopen(to_cs[1], "w");
  csc->from_fd = from_cs[0];
  csc->from_fp = fdopen(from_cs[0], "r");
  break;
 }
 return (0);
}
