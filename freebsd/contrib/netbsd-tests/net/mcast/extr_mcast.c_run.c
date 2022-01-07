
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int AF_UNIX ;
 int ERRX (int ,char*,int) ;
 int ERRX0 (int ,char*) ;
 int EXIT_FAILURE ;
 int SIGTERM ;
 int SOCK_STREAM ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int errno ;
 int fork () ;
 int kill (int ,int ) ;
 int receiver (int,char const*,char const*,size_t,int,int) ;
 int sender (int,char const*,char const*,size_t,int,int) ;
 int socketpair (int ,int ,int ,int*) ;
 int strerror (int ) ;
 int strsignal (int ) ;
 int waitpid (int ,int*,int ) ;

__attribute__((used)) static void
run(const char *host, const char *port, size_t n, bool conn, bool bug)
{
 pid_t pid;
 int status;
 int syncfds[2];
 int error;

 if (socketpair(AF_UNIX, SOCK_STREAM, 0, syncfds) == -1)
  ERRX(EXIT_FAILURE, "socketpair (%s)", strerror(errno));

 switch ((pid = fork())) {
 case 0:
  receiver(syncfds[0], host, port, n, conn, bug);
  return;
 case -1:
  ERRX(EXIT_FAILURE, "fork (%s)", strerror(errno));
 default:
  error = sender(syncfds[1], host, port, n, conn, bug);
 again:
  switch (waitpid(pid, &status, WNOHANG)) {
  case -1:
   ERRX(EXIT_FAILURE, "wait (%s)", strerror(errno));
  case 0:
   if (error == 0)




    goto again;

   if (kill(pid, SIGTERM) == -1)
    ERRX(EXIT_FAILURE, "kill (%s)",
        strerror(errno));
   goto again;
  default:
   if (WIFSIGNALED(status)) {
    if (WTERMSIG(status) == SIGTERM)
     ERRX0(EXIT_FAILURE,
         "receiver failed and was killed" "by sender");

    else
     ERRX(EXIT_FAILURE,
         "receiver got signaled (%s)",
         strsignal(WTERMSIG(status)));
   } else if (WIFEXITED(status)) {
    if (WEXITSTATUS(status) != 0)
     ERRX(EXIT_FAILURE,
         "receiver exited with status %d",
         WEXITSTATUS(status));
   } else {
    ERRX(EXIT_FAILURE,
        "receiver exited with unexpected status %d",
        status);
   }
   break;
  }
  return;
 }
}
