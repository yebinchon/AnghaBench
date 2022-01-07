
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;
 int get_tclk_armada38x () ;

__attribute__((used)) static int
mv_spi_psc_calc(uint32_t clock, uint32_t *spr, uint32_t *sppr)
{
 uint32_t divider, tclk;

 tclk = get_tclk_armada38x();
 for (*spr = 2; *spr <= 15; (*spr)++) {
  for (*sppr = 0; *sppr <= 7; (*sppr)++) {
   divider = *spr * (1 << *sppr);
   if (tclk / divider <= clock)
    return (0);
  }
 }

 return (EINVAL);
}
