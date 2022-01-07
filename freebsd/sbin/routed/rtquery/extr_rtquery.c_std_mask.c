
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ IN_CLASSA (scalar_t__) ;
 scalar_t__ IN_CLASSA_NET ;
 scalar_t__ IN_CLASSB (scalar_t__) ;
 scalar_t__ IN_CLASSB_NET ;
 scalar_t__ IN_CLASSC_NET ;
 scalar_t__ ntohl (scalar_t__) ;

__attribute__((used)) static u_int
std_mask(u_int addr)
{
 addr = ntohl(addr);

 if (addr == 0)
  return 0;
 if (IN_CLASSA(addr))
  return IN_CLASSA_NET;
 if (IN_CLASSB(addr))
  return IN_CLASSB_NET;
 return IN_CLASSC_NET;
}
