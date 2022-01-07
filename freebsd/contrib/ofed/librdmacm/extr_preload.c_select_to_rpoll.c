
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int *) ;
 int POLLIN ;
 int POLLOUT ;
 int fd_getd (int) ;

__attribute__((used)) static void select_to_rpoll(struct pollfd *fds, int *nfds,
       fd_set *readfds, fd_set *writefds, fd_set *exceptfds)
{
 int fd, events, i = 0;

 for (fd = 0; fd < *nfds; fd++) {
  events = (readfds && FD_ISSET(fd, readfds)) ? POLLIN : 0;
  if (writefds && FD_ISSET(fd, writefds))
   events |= POLLOUT;

  if (events || (exceptfds && FD_ISSET(fd, exceptfds))) {
   fds[i].fd = fd_getd(fd);
   fds[i++].events = events;
  }
 }

 *nfds = i;
}
