
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int revents; int fd; } ;
typedef int fd_set ;


 int FD_SET (int ,int *) ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;

__attribute__((used)) static int
rs_poll_to_select(int nfds, struct pollfd *fds, fd_set *readfds,
    fd_set *writefds, fd_set *exceptfds)
{
 int i, cnt = 0;

 for (i = 0; i < nfds; i++) {
  if (readfds && (fds[i].revents & (POLLIN | POLLHUP))) {
   FD_SET(fds[i].fd, readfds);
   cnt++;
  }

  if (writefds && (fds[i].revents & POLLOUT)) {
   FD_SET(fds[i].fd, writefds);
   cnt++;
  }

  if (exceptfds && (fds[i].revents & ~(POLLIN | POLLOUT))) {
   FD_SET(fds[i].fd, exceptfds);
   cnt++;
  }
 }
 return cnt;
}
