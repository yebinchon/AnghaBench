
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct sigaction {int sa_mask; int sa_handler; } ;
typedef int ssize_t ;
typedef int pid_t ;
typedef int action ;


 scalar_t__ EINTR ;
 int FIFO_FILE_PATH ;
 int MSG_SIZE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SIGCHLD ;
 int S_IRUSR ;
 int S_IWUSR ;
 int child_writer () ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int fflush (int ) ;
 int fork () ;
 int memset (struct sigaction*,int ,int) ;
 int mkfifo (int ,int) ;
 int nanosleep (struct timespec const*,int *) ;
 int open (int ,int ,int ) ;
 int printf (char*,...) ;
 int read (int,char*,size_t) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigchild_handler ;
 int sigemptyset (int *) ;
 int stdout ;
 int unlink (int ) ;
 scalar_t__ verbose ;
 int waitpid (int,int*,int ) ;
 int warn (char*) ;

__attribute__((used)) static int
run(void)
{
 pid_t pid;
 ssize_t rv;
 int fd, status;
 size_t buf_size = MSG_SIZE;
 char buf[MSG_SIZE];
 struct sigaction action;
 static const struct timespec ts = { 0, 500000000 };


 memset(&action, 0, sizeof(action));
 action.sa_handler = sigchild_handler;
 sigemptyset(&action.sa_mask);

 if (sigaction(SIGCHLD, &action, ((void*)0)) == -1)
  err(1, "sigaction");

 (void)unlink(FIFO_FILE_PATH);

 if (mkfifo(FIFO_FILE_PATH, S_IRUSR | S_IWUSR) == -1)
  err(1, "mkfifo");

 switch ((pid = fork())) {
 case -1:
  err(1, "fork");
 case 0:



  if ((fd = open(FIFO_FILE_PATH, O_WRONLY, 0)) == -1)
   err(1, "failed to open fifo");


  child_writer();
  return 0;

 default:
  break;
 }

 if (verbose) {
  printf("Child pid is %d\n", pid );
  fflush(stdout);
 }


 for (;;) {
  if ((fd = open(FIFO_FILE_PATH, O_RDONLY, 0)) == -1) {
   if (errno == EINTR)
    continue;
   else
    err(1, "Failed to open the fifo in read mode");
  }

  break;

 }

 nanosleep(&ts, ((void*)0));
 if (verbose) {
  printf("Was sleeping...\n");
  fflush(stdout);
 }

 for (;;) {
  rv = read(fd, buf, buf_size);

  if (rv == -1) {
   warn("Failed to read");
   if (errno == EINTR) {
    if (verbose) {
     printf("Parent interrupted, "
         "continuing...\n");
     fflush(stdout);
    }
    continue;
   }

   break;
  }

  if (rv == 0) {
   if (verbose) {
    printf("Writers have closed, looks like we "
        "are done\n");
    fflush(stdout);
   }
   break;
  }

  if (verbose) {
   printf("Received %zd bytes message '%s'\n", rv, buf);
   fflush(stdout);
  }
 }

 close(fd);

 if (verbose) {
  printf("We are done.. now reap the child");
  fflush(stdout);
 }


 while (waitpid(pid, &status, 0) == -1)
  if (errno != EINTR) {
   warn("Failed to reap the child");
   return 1;
  }

 if (verbose) {
  printf("We are done completely\n");
  fflush(stdout);
 }
 return 0;
}
