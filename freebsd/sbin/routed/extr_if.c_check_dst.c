
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int naddr ;


 scalar_t__ IN_CLASSA (int) ;
 int IN_CLASSA_NSHIFT ;
 scalar_t__ IN_CLASSB (int) ;
 scalar_t__ IN_CLASSC (int) ;
 int IN_LOOPBACKNET ;
 int ntohl (int) ;

int
check_dst(naddr addr)
{
 addr = ntohl(addr);

 if (IN_CLASSA(addr)) {
  if (addr == 0)
   return 1;

  addr >>= IN_CLASSA_NSHIFT;
  return (addr != 0 && addr != IN_LOOPBACKNET);
 }

 return (IN_CLASSB(addr) || IN_CLASSC(addr));
}
