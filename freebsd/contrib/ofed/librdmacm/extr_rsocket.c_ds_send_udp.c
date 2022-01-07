
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rsocket {int dummy; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
typedef int ssize_t ;


 int ds_sendv_udp (struct rsocket*,struct iovec*,int,int,int ) ;

__attribute__((used)) static ssize_t ds_send_udp(struct rsocket *rs, const void *buf, size_t len,
      int flags, uint8_t op)
{
 struct iovec iov;
 if (buf && len) {
  iov.iov_base = (void *) buf;
  iov.iov_len = len;
  return ds_sendv_udp(rs, &iov, 1, flags, op);
 } else {
  return ds_sendv_udp(rs, ((void*)0), 0, flags, op);
 }
}
