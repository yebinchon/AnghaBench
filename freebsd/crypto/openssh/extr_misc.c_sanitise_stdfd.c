
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBADF ;
 int F_GETFL ;
 int O_RDWR ;
 int STDERR_FILENO ;
 int _PATH_DEVNULL ;
 int close (int) ;
 int dup2 (int,int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fcntl (int,int ) ;
 int fprintf (int ,char*,char*) ;
 int open (int ,int ) ;
 int stderr ;
 char* strerror (scalar_t__) ;

void
sanitise_stdfd(void)
{
 int nullfd, dupfd;

 if ((nullfd = dupfd = open(_PATH_DEVNULL, O_RDWR)) == -1) {
  fprintf(stderr, "Couldn't open /dev/null: %s\n",
      strerror(errno));
  exit(1);
 }
 while (++dupfd <= STDERR_FILENO) {

  if (fcntl(dupfd, F_GETFL) == -1 && errno == EBADF) {
   if (dup2(nullfd, dupfd) == -1) {
    fprintf(stderr, "dup2: %s\n", strerror(errno));
    exit(1);
   }
  }
 }
 if (nullfd > STDERR_FILENO)
  close(nullfd);
}
