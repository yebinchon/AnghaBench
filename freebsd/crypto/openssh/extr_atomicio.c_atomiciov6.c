
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
struct iovec {scalar_t__ iov_len; char* iov_base; } ;
typedef int ssize_t ;
typedef int f ;


 int EAGAIN ;
 int EFAULT ;
 int EINTR ;
 int EINVAL ;
 int EPIPE ;
 int EWOULDBLOCK ;
 int IOV_MAX ;
 int POLLIN ;
 int POLLOUT ;
 int errno ;
 int memcpy (struct iovec*,struct iovec const*,size_t) ;
 int poll (struct pollfd*,int,int) ;
 ssize_t readv (int,struct iovec const*,int) ;

size_t
atomiciov6(ssize_t (*f) (int, const struct iovec *, int), int fd,
    const struct iovec *_iov, int iovcnt,
    int (*cb)(void *, size_t), void *cb_arg)
{
 size_t pos = 0, rem;
 ssize_t res;
 struct iovec iov_array[IOV_MAX], *iov = iov_array;
 struct pollfd pfd;

 if (iovcnt < 0 || iovcnt > IOV_MAX) {
  errno = EINVAL;
  return 0;
 }

 memcpy(iov, _iov, (size_t)iovcnt * sizeof(*_iov));


 pfd.fd = fd;
 pfd.events = f == readv ? POLLIN : POLLOUT;

 for (; iovcnt > 0 && iov[0].iov_len > 0;) {
  res = (f) (fd, iov, iovcnt);
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
   rem = (size_t)res;
   pos += rem;

   while (iovcnt > 0 && rem >= iov[0].iov_len) {
    rem -= iov[0].iov_len;
    iov++;
    iovcnt--;
   }

   if (rem > 0 && (iovcnt <= 0 || rem > iov[0].iov_len)) {
    errno = EFAULT;
    return 0;
   }
   if (iovcnt == 0)
    break;

   iov[0].iov_base = ((char *)iov[0].iov_base) + rem;
   iov[0].iov_len -= rem;
  }
  if (cb != ((void*)0) && cb(cb_arg, (size_t)res) == -1) {
   errno = EINTR;
   return pos;
  }
 }
 return pos;
}
