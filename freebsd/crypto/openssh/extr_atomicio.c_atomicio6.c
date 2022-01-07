
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
typedef int ssize_t ;
typedef int f ;


 int EAGAIN ;
 int EINTR ;
 int EPIPE ;
 int EWOULDBLOCK ;
 int POLLIN ;
 int POLLOUT ;
 int errno ;
 int poll (struct pollfd*,int,int) ;
 ssize_t read (int,void*,size_t) ;

size_t
atomicio6(ssize_t (*f) (int, void *, size_t), int fd, void *_s, size_t n,
    int (*cb)(void *, size_t), void *cb_arg)
{
 char *s = _s;
 size_t pos = 0;
 ssize_t res;
 struct pollfd pfd;


 pfd.fd = fd;
 pfd.events = f == read ? POLLIN : POLLOUT;

 while (n > pos) {
  res = (f) (fd, s + pos, n - pos);
  switch (res) {
  case -1:
   if (errno == EINTR)
    continue;
   if (errno == EAGAIN || errno == EWOULDBLOCK) {

    (void)poll(&pfd, 1, -1);

    continue;
   }
   return 0;
  case 0:
   errno = EPIPE;
   return pos;
  default:
   pos += (size_t)res;
   if (cb != ((void*)0) && cb(cb_arg, (size_t)res) == -1) {
    errno = EINTR;
    return pos;
   }
  }
 }
 return pos;
}
