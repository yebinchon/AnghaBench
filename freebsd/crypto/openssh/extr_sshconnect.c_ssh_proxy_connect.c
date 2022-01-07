
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct ssh {int dummy; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {int user; } ;


 int SIGPIPE ;
 int SIG_DFL ;
 char* _PATH_BSHELL ;
 int close (int) ;
 int debug (char*,char*) ;
 scalar_t__ dup2 (int,int) ;
 int errno ;
 int execv (char*,char**) ;
 int exit (int) ;
 char* expand_proxy_command (char const*,int ,char const*,int ) ;
 int fatal (char*,int ) ;
 scalar_t__ fork () ;
 int free (char*) ;
 char* getenv (char*) ;
 TYPE_1__ options ;
 int perror (char*) ;
 scalar_t__ pipe (int*) ;
 scalar_t__ proxy_command_pid ;
 int signal (int ,int ) ;
 int * ssh_packet_set_connection (struct ssh*,int,int) ;
 int strerror (int ) ;

__attribute__((used)) static int
ssh_proxy_connect(struct ssh *ssh, const char *host, u_short port,
    const char *proxy_command)
{
 char *command_string;
 int pin[2], pout[2];
 pid_t pid;
 char *shell;

 if ((shell = getenv("SHELL")) == ((void*)0) || *shell == '\0')
  shell = _PATH_BSHELL;


 if (pipe(pin) < 0 || pipe(pout) < 0)
  fatal("Could not create pipes to communicate with the proxy: %.100s",
      strerror(errno));

 command_string = expand_proxy_command(proxy_command, options.user,
     host, port);
 debug("Executing proxy command: %.500s", command_string);


 if ((pid = fork()) == 0) {
  char *argv[10];


  close(pin[1]);
  if (pin[0] != 0) {
   if (dup2(pin[0], 0) < 0)
    perror("dup2 stdin");
   close(pin[0]);
  }
  close(pout[0]);
  if (dup2(pout[1], 1) < 0)
   perror("dup2 stdout");

  close(pout[1]);



  argv[0] = shell;
  argv[1] = "-c";
  argv[2] = command_string;
  argv[3] = ((void*)0);



  signal(SIGPIPE, SIG_DFL);
  execv(argv[0], argv);
  perror(argv[0]);
  exit(1);
 }

 if (pid < 0)
  fatal("fork failed: %.100s", strerror(errno));
 else
  proxy_command_pid = pid;


 close(pin[0]);
 close(pout[1]);


 free(command_string);


 if (ssh_packet_set_connection(ssh, pout[0], pin[1]) == ((void*)0))
  return -1;

 return 0;
}
