
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct in_addr {int s_addr; } ;


 scalar_t__ IN_CLASSA (int ) ;
 int IN_CLASSA_NET ;
 scalar_t__ IN_CLASSB (int ) ;
 int IN_CLASSB_NET ;
 int IN_CLASSC_NET ;
 int htonl (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static u_int32_t
net_mask(struct in_addr in)
{
 u_int32_t i = ntohl(in.s_addr);

 if (IN_CLASSA(i))
  return (htonl(IN_CLASSA_NET));
 else if (IN_CLASSB(i))
  return (htonl(IN_CLASSB_NET));
 return (htonl(IN_CLASSC_NET));
}
