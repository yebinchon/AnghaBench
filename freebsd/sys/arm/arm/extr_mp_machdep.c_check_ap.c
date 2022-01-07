
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DELAY (int) ;
 scalar_t__ mp_naps ;
 scalar_t__ mp_ncpus ;

__attribute__((used)) static int
check_ap(void)
{
 uint32_t ms;

 for (ms = 0; ms < 2000; ++ms) {
  if ((mp_naps + 1) == mp_ncpus)
   return (0);
  else
   DELAY(1000);
 }

 return (-2);
}
