
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct ssh {int dummy; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {int user; } ;


 int AF_UNIX ;
 scalar_t__ EINTR ;
 int SOCK_STREAM ;
 char* _PATH_BSHELL ;
 int close (int) ;
 int debug (char*,char*) ;
 scalar_t__ dup2 (int,int) ;
 scalar_t__ errno ;
 int execv (char*,char**) ;
 int exit (int) ;
 char* expand_proxy_command (char const*,int ,char const*,int ) ;
 int fatal (char*,...) ;
 scalar_t__ fork () ;
 int free (char*) ;
 char* getenv (char*) ;
 int mm_receive_fd (int) ;
 TYPE_1__ options ;
 int perror (char*) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int * ssh_packet_set_connection (struct ssh*,int,int) ;
 int strerror (scalar_t__) ;
 int waitpid (scalar_t__,int *,int ) ;

__attribute__((used)) static int
ssh_proxy_fdpass_connect(struct ssh *ssh, const char *host, u_short port,
    const char *proxy_command)
{
 char *command_string;
 int sp[2], sock;
 pid_t pid;
 char *shell;

 if ((shell = getenv("SHELL")) == ((void*)0))
  shell = _PATH_BSHELL;

 if (socketpair(AF_UNIX, SOCK_STREAM, 0, sp) < 0)
  fatal("Could not create socketpair to communicate with "
      "proxy dialer: %.100s", strerror(errno));

 command_string = expand_proxy_command(proxy_command, options.user,
     host, port);
 debug("Executing proxy dialer command: %.500s", command_string);


 if ((pid = fork()) == 0) {
  char *argv[10];

  close(sp[1]);

  if (sp[0] != 0) {
   if (dup2(sp[0], 0) < 0)
    perror("dup2 stdin");
  }
  if (sp[0] != 1) {
   if (dup2(sp[0], 1) < 0)
    perror("dup2 stdout");
  }
  if (sp[0] >= 2)
   close(sp[0]);





  argv[0] = shell;
  argv[1] = "-c";
  argv[2] = command_string;
  argv[3] = ((void*)0);





  execv(argv[0], argv);
  perror(argv[0]);
  exit(1);
 }

 if (pid < 0)
  fatal("fork failed: %.100s", strerror(errno));
 close(sp[0]);
 free(command_string);

 if ((sock = mm_receive_fd(sp[1])) == -1)
  fatal("proxy dialer did not pass back a connection");
 close(sp[1]);

 while (waitpid(pid, ((void*)0), 0) == -1)
  if (errno != EINTR)
   fatal("Couldn't wait for child: %s", strerror(errno));


 if (ssh_packet_set_connection(ssh, sock, sock) == ((void*)0))
  return -1;

 return 0;
}
