
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int *) ;
 int POLLIN ;
 int POLLOUT ;
 struct pollfd* calloc (int,int) ;

__attribute__((used)) static struct pollfd *
rs_select_to_poll(int *nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds)
{
 struct pollfd *fds;
 int fd, i = 0;

 fds = calloc(*nfds, sizeof(*fds));
 if (!fds)
  return ((void*)0);

 for (fd = 0; fd < *nfds; fd++) {
  if (readfds && FD_ISSET(fd, readfds)) {
   fds[i].fd = fd;
   fds[i].events = POLLIN;
  }

  if (writefds && FD_ISSET(fd, writefds)) {
   fds[i].fd = fd;
   fds[i].events |= POLLOUT;
  }

  if (exceptfds && FD_ISSET(fd, exceptfds))
   fds[i].fd = fd;

  if (fds[i].fd)
   i++;
 }

 *nfds = i;
 return fds;
}
