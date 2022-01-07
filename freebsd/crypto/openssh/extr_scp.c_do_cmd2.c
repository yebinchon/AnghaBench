
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_4__ {int list; } ;


 scalar_t__ EINTR ;
 int addargs (TYPE_1__*,char*,...) ;
 TYPE_1__ args ;
 int dup2 (int,int) ;
 scalar_t__ errno ;
 int execvp (int ,int ) ;
 int exit (int) ;
 int fatal (char*,int ) ;
 int fmprintf (int ,char*,int ,char*,char*,char*) ;
 int fork () ;
 int perror (int ) ;
 int replacearg (TYPE_1__*,int ,char*,int ) ;
 int ssh_program ;
 int sshport ;
 int stderr ;
 int strerror (scalar_t__) ;
 scalar_t__ verbose_mode ;
 int waitpid (int,int*,int ) ;

int
do_cmd2(char *host, char *remuser, int port, char *cmd, int fdin, int fdout)
{
 pid_t pid;
 int status;

 if (verbose_mode)
  fmprintf(stderr,
      "Executing: 2nd program %s host %s, user %s, command %s\n",
      ssh_program, host,
      remuser ? remuser : "(unspecified)", cmd);

 if (port == -1)
  port = sshport;


 pid = fork();
 if (pid == 0) {
  dup2(fdin, 0);
  dup2(fdout, 1);

  replacearg(&args, 0, "%s", ssh_program);
  if (port != -1) {
   addargs(&args, "-p");
   addargs(&args, "%d", port);
  }
  if (remuser != ((void*)0)) {
   addargs(&args, "-l");
   addargs(&args, "%s", remuser);
  }
  addargs(&args, "--");
  addargs(&args, "%s", host);
  addargs(&args, "%s", cmd);

  execvp(ssh_program, args.list);
  perror(ssh_program);
  exit(1);
 } else if (pid == -1) {
  fatal("fork: %s", strerror(errno));
 }
 while (waitpid(pid, &status, 0) == -1)
  if (errno != EINTR)
   fatal("do_cmd2: waitpid: %s", strerror(errno));
 return 0;
}
