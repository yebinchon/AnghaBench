
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int revents; } ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int POLLIN ;
 int POLLOUT ;
 int fd_getd (int) ;

__attribute__((used)) static int rpoll_to_select(struct pollfd *fds, int nfds,
      fd_set *readfds, fd_set *writefds, fd_set *exceptfds)
{
 int fd, rfd, i, cnt = 0;

 for (i = 0, fd = 0; i < nfds; fd++) {
  rfd = fd_getd(fd);
  if (rfd != fds[i].fd)
   continue;

  if (readfds && (fds[i].revents & POLLIN)) {
   FD_SET(fd, readfds);
   cnt++;
  }

  if (writefds && (fds[i].revents & POLLOUT)) {
   FD_SET(fd, writefds);
   cnt++;
  }

  if (exceptfds && (fds[i].revents & ~(POLLIN | POLLOUT))) {
   FD_SET(fd, exceptfds);
   cnt++;
  }
  i++;
 }

 return cnt;
}
