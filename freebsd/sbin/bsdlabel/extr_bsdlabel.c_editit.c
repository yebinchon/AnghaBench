
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 char* DEFEDITOR ;
 scalar_t__ EAGAIN ;
 scalar_t__ EPROCLIM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int execlp (char const*,char const*,int ,char*) ;
 int fork () ;
 char* getenv (char*) ;
 int getgid () ;
 int getuid () ;
 int setresgid (int ,int ,int ) ;
 int setresuid (int ,int ,int ) ;
 int sigblock (int) ;
 int sigmask (int ) ;
 int sigsetmask (int) ;
 int sleep (int) ;
 int tmpfil ;
 int wait (int*) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
editit(void)
{
 int pid, xpid;
 int locstat, omask;
 const char *ed;
 uid_t uid;
 gid_t gid;

 omask = sigblock(sigmask(SIGINT)|sigmask(SIGQUIT)|sigmask(SIGHUP));
 while ((pid = fork()) < 0) {
  if (errno == EPROCLIM) {
   warnx("you have too many processes");
   return(0);
  }
  if (errno != EAGAIN) {
   warn("fork");
   return(0);
  }
  sleep(1);
 }
 if (pid == 0) {
  sigsetmask(omask);
  gid = getgid();
  if (setresgid(gid, gid, gid) == -1)
   err(1, "setresgid");
  uid = getuid();
  if (setresuid(uid, uid, uid) == -1)
   err(1, "setresuid");
  if ((ed = getenv("EDITOR")) == (char *)0)
   ed = DEFEDITOR;
  execlp(ed, ed, tmpfil, (char *)0);
  err(1, "%s", ed);
 }
 while ((xpid = wait(&locstat)) >= 0)
  if (xpid == pid)
   break;
 sigsetmask(omask);
 return(!locstat);
}
