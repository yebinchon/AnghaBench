
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
 int RDMA_IOMAPSIZE ;
 int SOL_RDMA ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int TCP_NODELAY ;
 scalar_t__ buffer_size ;
 int flags ;
 int inline_size ;
 scalar_t__ opt_bandwidth ;
 scalar_t__ opt_latency ;
 scalar_t__ optimization ;
 int rfcntl (int,int ,int ) ;
 int rsetsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void set_options(int fd)
{
 int val;

 if (buffer_size) {
  rsetsockopt(fd, SOL_SOCKET, SO_SNDBUF, (void *) &buffer_size,
       sizeof buffer_size);
  rsetsockopt(fd, SOL_SOCKET, SO_RCVBUF, (void *) &buffer_size,
       sizeof buffer_size);
 } else {
  val = 1 << 19;
  rsetsockopt(fd, SOL_SOCKET, SO_SNDBUF, (void *) &val, sizeof val);
  rsetsockopt(fd, SOL_SOCKET, SO_RCVBUF, (void *) &val, sizeof val);
 }

 val = 1;
 rsetsockopt(fd, IPPROTO_TCP, TCP_NODELAY, (void *) &val, sizeof(val));
 rsetsockopt(fd, SOL_RDMA, RDMA_IOMAPSIZE, (void *) &val, sizeof val);

 if (flags & MSG_DONTWAIT)
  rfcntl(fd, F_SETFL, O_NONBLOCK);


 if (optimization == opt_latency) {
  rsetsockopt(fd, SOL_RDMA, RDMA_INLINE, &inline_size,
       sizeof inline_size);
 } else if (optimization == opt_bandwidth) {
  val = 0;
  rsetsockopt(fd, SOL_RDMA, RDMA_INLINE, &val, sizeof val);
 }
}
