
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
typedef int in_addr_t ;
typedef int i ;


 scalar_t__ IN_CLASSA (int ) ;
 int IN_CLASSA_HOST ;
 scalar_t__ IN_CLASSB (int ) ;
 int IN_CLASSB_HOST ;
 int IN_CLASSC_HOST ;
 int ntohl (int ) ;

in_addr_t
inet_lnaof(struct in_addr in)
{
 in_addr_t i = ntohl(in.s_addr);

 if (IN_CLASSA(i))
  return ((i)&IN_CLASSA_HOST);
 else if (IN_CLASSB(i))
  return ((i)&IN_CLASSB_HOST);
 else
  return ((i)&IN_CLASSC_HOST);
}
