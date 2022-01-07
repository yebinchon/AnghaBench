
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iaddr {scalar_t__ len; int iabuf; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
addr_eq(struct iaddr addr1, struct iaddr addr2)
{
 if (addr1.len != addr2.len)
  return (0);
 return (memcmp(addr1.iabuf, addr2.iabuf, addr1.len) == 0);
}
