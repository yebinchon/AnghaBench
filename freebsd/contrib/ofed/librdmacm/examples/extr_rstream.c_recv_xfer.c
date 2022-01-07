
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int POLLIN ;
 scalar_t__ buf ;
 int do_poll (struct pollfd*,int ) ;
 scalar_t__ errno ;
 int flags ;
 int perror (char*) ;
 int poll_timeout ;
 int rs ;
 int rs_recv (int ,scalar_t__,int,int ) ;
 scalar_t__ use_async ;
 scalar_t__ verify ;
 int verify_buf (scalar_t__,int) ;

__attribute__((used)) static int recv_xfer(int size)
{
 struct pollfd fds;
 int offset, ret;

 if (use_async) {
  fds.fd = rs;
  fds.events = POLLIN;
 }

 for (offset = 0; offset < size; ) {
  if (use_async) {
   ret = do_poll(&fds, poll_timeout);
   if (ret)
    return ret;
  }

  ret = rs_recv(rs, buf + offset, size - offset, flags);
  if (ret > 0) {
   offset += ret;
  } else if (errno != EWOULDBLOCK && errno != EAGAIN) {
   perror("rrecv");
   return ret;
  }
 }

 if (verify) {
  ret = verify_buf(buf, size);
  if (ret)
   return ret;
 }

 return 0;
}
