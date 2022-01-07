
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int fd; int events; int revents; } ;
typedef size_t nfds_t ;
typedef int fd_set ;
typedef int fd_mask ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int MAX (int,int) ;
 int NFDBITS ;
 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 int * calloc (size_t,int) ;
 int errno ;
 int free (int *) ;
 size_t howmany (int,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;

int
poll(struct pollfd *fds, nfds_t nfds, int timeout)
{
 nfds_t i;
 int saved_errno, ret, fd, maxfd = 0;
 fd_set *readfds = ((void*)0), *writefds = ((void*)0), *exceptfds = ((void*)0);
 size_t nmemb;
 struct timeval tv, *tvp = ((void*)0);

 for (i = 0; i < nfds; i++) {
  fd = fds[i].fd;
  if (fd >= FD_SETSIZE) {
   errno = EINVAL;
   return -1;
  }
  maxfd = MAX(maxfd, fd);
 }

 nmemb = howmany(maxfd + 1 , NFDBITS);
 if ((readfds = calloc(nmemb, sizeof(fd_mask))) == ((void*)0) ||
     (writefds = calloc(nmemb, sizeof(fd_mask))) == ((void*)0) ||
     (exceptfds = calloc(nmemb, sizeof(fd_mask))) == ((void*)0)) {
  saved_errno = ENOMEM;
  ret = -1;
  goto out;
 }


 for (i = 0; i < nfds; i++) {
  fd = fds[i].fd;
  if (fd == -1)
   continue;
  if (fds[i].events & POLLIN) {
   FD_SET(fd, readfds);
   FD_SET(fd, exceptfds);
  }
  if (fds[i].events & POLLOUT) {
   FD_SET(fd, writefds);
   FD_SET(fd, exceptfds);
  }
 }


 if (timeout >= 0) {
  tv.tv_sec = timeout / 1000;
  tv.tv_usec = (timeout % 1000) * 1000;
  tvp = &tv;
 }

 ret = select(maxfd + 1, readfds, writefds, exceptfds, tvp);
 saved_errno = errno;


 for (i = 0; i < nfds; i++) {
  fd = fds[i].fd;
  fds[i].revents = 0;
  if (fd == -1)
   continue;
  if (FD_ISSET(fd, readfds)) {
   fds[i].revents |= POLLIN;
  }
  if (FD_ISSET(fd, writefds)) {
   fds[i].revents |= POLLOUT;
  }
  if (FD_ISSET(fd, exceptfds)) {
   fds[i].revents |= POLLERR;
  }
 }

out:
 free(readfds);
 free(writefds);
 free(exceptfds);
 if (ret == -1)
  errno = saved_errno;
 return ret;
}
