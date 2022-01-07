
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SETFL ;
 int MSG_DONTWAIT ;
 int O_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 scalar_t__ buffer_size ;
 int flags ;
 int rs_fcntl (int,int ,int ) ;
 int rs_setsockopt (int,int ,int ,void*,int) ;

__attribute__((used)) static void set_options(int fd)
{
 int val;

 if (buffer_size) {
  rs_setsockopt(fd, SOL_SOCKET, SO_SNDBUF, (void *) &buffer_size,
         sizeof buffer_size);
  rs_setsockopt(fd, SOL_SOCKET, SO_RCVBUF, (void *) &buffer_size,
         sizeof buffer_size);
 } else {
  val = 1 << 19;
  rs_setsockopt(fd, SOL_SOCKET, SO_SNDBUF, (void *) &val, sizeof val);
  rs_setsockopt(fd, SOL_SOCKET, SO_RCVBUF, (void *) &val, sizeof val);
 }

 if (flags & MSG_DONTWAIT)
  rs_fcntl(fd, F_SETFL, O_NONBLOCK);
}
