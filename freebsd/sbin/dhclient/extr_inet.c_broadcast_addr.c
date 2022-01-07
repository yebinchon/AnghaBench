
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iaddr {unsigned int len; int* iabuf; } ;



struct iaddr
broadcast_addr(struct iaddr subnet, struct iaddr mask)
{
 struct iaddr rv;
 unsigned i;

 if (subnet.len != mask.len) {
  rv.len = 0;
  return (rv);
 }

 for (i = 0; i < subnet.len; i++)
  rv.iabuf[i] = subnet.iabuf[i] | (~mask.iabuf[i] & 255);
 rv.len = subnet.len;

 return (rv);
}
