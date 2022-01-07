
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iaddr {scalar_t__ len; int* iabuf; } ;



struct iaddr
subnet_number(struct iaddr addr, struct iaddr mask)
{
 struct iaddr rv;
 unsigned i;

 rv.len = 0;


 if (addr.len != mask.len)
  return (rv);

 rv.len = addr.len;
 for (i = 0; i < rv.len; i++)
  rv.iabuf[i] = addr.iabuf[i] & mask.iabuf[i];
 return (rv);
}
