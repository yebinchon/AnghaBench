
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pid; int fd; scalar_t__ sent; } ;


 int AF_UNIX ;
 int Exit (int ) ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN ;
 int SLAVES ;
 int SOCK_STREAM ;
 int X_FINOK ;
 int atomic (int ,int,char*,int) ;
 int caught ;
 int close (int) ;
 int doslave (int,int) ;
 int dumpabort ;
 int errno ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 scalar_t__ master ;
 int proceed ;
 int quit (char*,int,int ) ;
 int signal (int ,int ) ;
 int sigpipe ;
 TYPE_1__* slaves ;
 TYPE_1__* slp ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int strerror (int ) ;
 int tperror ;
 int write ;

void
enslave(void)
{
 int cmd[2];
 int i, j;

 master = getpid();

 signal(SIGTERM, dumpabort);
 signal(SIGPIPE, sigpipe);
 signal(SIGUSR1, tperror);
 signal(SIGUSR2, proceed);

 for (i = 0; i < SLAVES; i++) {
  if (i == slp - &slaves[0]) {
   caught = 1;
  } else {
   caught = 0;
  }

  if (socketpair(AF_UNIX, SOCK_STREAM, 0, cmd) < 0 ||
      (slaves[i].pid = fork()) < 0)
   quit("too many slaves, %d (recompile smaller): %s\n",
       i, strerror(errno));

  slaves[i].fd = cmd[1];
  slaves[i].sent = 0;
  if (slaves[i].pid == 0) {
   for (j = 0; j <= i; j++)
           (void) close(slaves[j].fd);
   signal(SIGINT, SIG_IGN);
   doslave(cmd[0], i);
   Exit(X_FINOK);
  }
 }

 for (i = 0; i < SLAVES; i++)
  (void) atomic(write, slaves[i].fd,
         (char *) &slaves[(i + 1) % SLAVES].pid,
                sizeof slaves[0].pid);

 master = 0;
}
