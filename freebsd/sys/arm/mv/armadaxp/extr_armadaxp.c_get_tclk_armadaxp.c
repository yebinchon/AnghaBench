
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CPU_ID_CPU_MASK ;
 int CPU_ID_MV88SV584X_V7 ;
 int TCLK_200MHZ ;
 int TCLK_250MHZ ;
 int cp15_midr_get () ;

uint32_t
get_tclk_armadaxp(void)
{
  uint32_t cputype;

 cputype = cp15_midr_get();
 cputype &= CPU_ID_CPU_MASK;

 if (cputype == CPU_ID_MV88SV584X_V7)
  return (TCLK_250MHZ);
 else
  return (TCLK_200MHZ);
}
