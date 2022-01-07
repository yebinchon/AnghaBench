
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
typedef int in_addr_t ;
typedef int i ;


 scalar_t__ IN_CLASSA (int) ;
 int IN_CLASSA_NET ;
 int IN_CLASSA_NSHIFT ;
 scalar_t__ IN_CLASSB (int) ;
 int IN_CLASSB_NET ;
 int IN_CLASSB_NSHIFT ;
 int IN_CLASSC_NET ;
 int IN_CLASSC_NSHIFT ;
 int ntohl (int ) ;

in_addr_t
inet_netof(struct in_addr in)
{
 in_addr_t i = ntohl(in.s_addr);

 if (IN_CLASSA(i))
  return (((i)&IN_CLASSA_NET) >> IN_CLASSA_NSHIFT);
 else if (IN_CLASSB(i))
  return (((i)&IN_CLASSB_NET) >> IN_CLASSB_NSHIFT);
 else
  return (((i)&IN_CLASSC_NET) >> IN_CLASSC_NSHIFT);
}
