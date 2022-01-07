
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addr; struct addrinfo* ai_next; int ai_addrlen; } ;
typedef scalar_t__ pid_t ;


 int PATH_RSH ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int err (int,char*,...) ;
 int errno ;
 int errx (int,char*) ;
 int execv (int ,char**) ;
 scalar_t__ fork () ;
 int free (char*) ;
 char** malloc (int) ;
 char* print_addr (int ) ;
 int proto (int,int,char*,char const*,char const*,char const*,size_t,int ) ;
 int send_broken_auth ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;
 int warn (char*,char*) ;

__attribute__((used)) static int
doit_broken (int argc,
      char **argv,
      int hostindex,
      struct addrinfo *ai,
      const char *remote_user,
      const char *local_user,
      int priv_socket1,
      int priv_socket2,
      const char *cmd,
      size_t cmd_len)
{
    struct addrinfo *a;

    if (connect (priv_socket1, ai->ai_addr, ai->ai_addrlen) < 0) {
 int save_errno = errno;

 close(priv_socket1);
 close(priv_socket2);

 for (a = ai->ai_next; a != ((void*)0); a = a->ai_next) {
     pid_t pid;
     char *adr = print_addr(a->ai_addr);
     if(adr == ((void*)0))
  continue;

     pid = fork();
     if (pid < 0)
  err (1, "fork");
     else if(pid == 0) {
  char **new_argv;
  int i = 0;

  new_argv = malloc((argc + 2) * sizeof(*new_argv));
  if (new_argv == ((void*)0))
      errx (1, "malloc: out of memory");
  new_argv[i] = argv[i];
  ++i;
  if (hostindex == i)
      new_argv[i++] = adr;
  new_argv[i++] = "-K";
  for(; i <= argc; ++i)
      new_argv[i] = argv[i - 1];
  if (hostindex > 1)
      new_argv[hostindex + 1] = adr;
  new_argv[argc + 1] = ((void*)0);
  execv(PATH_RSH, new_argv);
  err(1, "execv(%s)", PATH_RSH);
     } else {
  int status;
  free(adr);

  while(waitpid(pid, &status, 0) < 0)
      ;
  if(WIFEXITED(status) && WEXITSTATUS(status) == 0)
      return 0;
     }
 }
 errno = save_errno;
 warn("%s", argv[hostindex]);
 return 1;
    } else {
 int ret;

 ret = proto (priv_socket1, priv_socket2,
       argv[hostindex],
       local_user, remote_user,
       cmd, cmd_len,
       send_broken_auth);
 return ret;
    }
}
