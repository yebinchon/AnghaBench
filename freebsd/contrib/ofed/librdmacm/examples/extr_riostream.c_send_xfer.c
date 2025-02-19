
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int POLLOUT ;
 scalar_t__ buf ;
 int do_poll (struct pollfd*,int ) ;
 scalar_t__ errno ;
 int flags ;
 int perror (char*) ;
 int poll_timeout ;
 int riowrite (int ,scalar_t__,int,int,int ) ;
 int rs ;
 scalar_t__ use_async ;

__attribute__((used)) static int send_xfer(int size)
{
 struct pollfd fds;
 int offset, ret;

 if (use_async) {
  fds.fd = rs;
  fds.events = POLLOUT;
 }

 for (offset = 0; offset < size; ) {
  if (use_async) {
   ret = do_poll(&fds, poll_timeout);
   if (ret)
    return ret;
  }

  ret = riowrite(rs, buf + offset, size - offset, offset, flags);
  if (ret > 0) {
   offset += ret;
  } else if (errno != EWOULDBLOCK && errno != EAGAIN) {
   perror("riowrite");
   return ret;
  }
 }

 return 0;
}
