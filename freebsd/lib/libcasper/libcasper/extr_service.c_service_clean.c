
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CASPER_SERVICE_FD ;
 int CASPER_SERVICE_STDIO ;
 int STDERR_FILENO ;
 int assert (int) ;
 int close (int) ;
 int closefrom (int) ;
 int stdnull () ;

__attribute__((used)) static void
service_clean(int sock, int procfd, uint64_t flags)
{
 int fd, maxfd, minfd;

 assert(sock > STDERR_FILENO);
 assert(procfd > STDERR_FILENO);
 assert(sock != procfd);

 if ((flags & CASPER_SERVICE_STDIO) == 0)
  stdnull();

 if ((flags & CASPER_SERVICE_FD) == 0) {
  if (procfd > sock) {
   maxfd = procfd;
   minfd = sock;
  } else {
   maxfd = sock;
   minfd = procfd;
  }

  for (fd = STDERR_FILENO + 1; fd < maxfd; fd++) {
   if (fd != minfd)
    close(fd);
  }
  closefrom(maxfd + 1);
 }
}
