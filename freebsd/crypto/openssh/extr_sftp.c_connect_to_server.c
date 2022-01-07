
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_DFL ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _exit (int) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int errno ;
 int execvp (char*,char**) ;
 int fatal (char*,char*) ;
 int fork () ;
 int fprintf (int ,char*,char*,...) ;
 int killchild ;
 int pipe (int*) ;
 int sigchld_handler ;
 int signal (int ,int ) ;
 int socketpair (int ,int ,int ,int*) ;
 int sshpid ;
 int stderr ;
 char* strerror (int ) ;
 int suspchild ;

__attribute__((used)) static void
connect_to_server(char *path, char **args, int *in, int *out)
{
 int c_in, c_out;
 int inout[2];

 if (socketpair(AF_UNIX, SOCK_STREAM, 0, inout) == -1)
  fatal("socketpair: %s", strerror(errno));
 *in = *out = inout[0];
 c_in = c_out = inout[1];


 if ((sshpid = fork()) == -1)
  fatal("fork: %s", strerror(errno));
 else if (sshpid == 0) {
  if ((dup2(c_in, STDIN_FILENO) == -1) ||
      (dup2(c_out, STDOUT_FILENO) == -1)) {
   fprintf(stderr, "dup2: %s\n", strerror(errno));
   _exit(1);
  }
  close(*in);
  close(*out);
  close(c_in);
  close(c_out);
  signal(SIGINT, SIG_IGN);
  signal(SIGTERM, SIG_DFL);
  execvp(path, args);
  fprintf(stderr, "exec: %s: %s\n", path, strerror(errno));
  _exit(1);
 }

 signal(SIGTERM, killchild);
 signal(SIGINT, killchild);
 signal(SIGHUP, killchild);
 signal(SIGTSTP, suspchild);
 signal(SIGTTIN, suspchild);
 signal(SIGTTOU, suspchild);
 signal(SIGCHLD, sigchld_handler);
 close(c_in);
 close(c_out);
}
