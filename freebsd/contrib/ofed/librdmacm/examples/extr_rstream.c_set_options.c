
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int F_SETFL ;
 int IPPROTO_TCP ;
 int MSG_DONTWAIT ;
 int O_NONBLOCK ;
 int RDMA_INLINE ;
 int SOL_RDMA ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int TCP_NODELAY ;
 scalar_t__ buffer_size ;
 int flags ;
 int inline_size ;
 scalar_t__ keepalive ;
 scalar_t__ opt_bandwidth ;
 scalar_t__ opt_latency ;
 scalar_t__ optimization ;
 int rs_fcntl (int,int ,int ) ;
 int rs_setsockopt (int,int ,int ,int*,int) ;
 int set_keepalive (int) ;
 scalar_t__ use_rs ;

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

 val = 1;
 rs_setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, (void *) &val, sizeof(val));

 if (flags & MSG_DONTWAIT)
  rs_fcntl(fd, F_SETFL, O_NONBLOCK);

 if (use_rs) {

  if (optimization == opt_latency) {
   rs_setsockopt(fd, SOL_RDMA, RDMA_INLINE, &inline_size,
          sizeof inline_size);
  } else if (optimization == opt_bandwidth) {
   val = 0;
   rs_setsockopt(fd, SOL_RDMA, RDMA_INLINE, &val, sizeof val);
  }
 }

 if (keepalive)
  set_keepalive(fd);
}
