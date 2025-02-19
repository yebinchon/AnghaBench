
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dst_addr ;
 int recv_xfer (int) ;
 int send_xfer (int) ;

__attribute__((used)) static int sync_test(void)
{
 int ret;

 ret = dst_addr ? send_xfer(16) : recv_xfer(16);
 if (ret)
  return ret;

 return dst_addr ? recv_xfer(16) : send_xfer(16);
}
