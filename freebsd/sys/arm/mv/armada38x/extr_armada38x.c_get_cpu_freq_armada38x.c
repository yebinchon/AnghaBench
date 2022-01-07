
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A38X_CPU_DDR_CLK_MASK ;
 int A38X_CPU_DDR_CLK_SHIFT ;
 scalar_t__ get_sar_value_armada38x () ;
 int hw_clockrate ;
 int nitems (int const*) ;

uint32_t
get_cpu_freq_armada38x(void)
{
 uint32_t sar;

 static const uint32_t cpu_frequencies[] = {
  0, 0, 0, 0,
  1066, 0, 0, 0,
  1332, 0, 0, 0,
  1600, 0, 0, 0,
  1866, 0, 0, 2000
 };

 sar = (uint32_t)get_sar_value_armada38x();
 sar = (sar & A38X_CPU_DDR_CLK_MASK) >> A38X_CPU_DDR_CLK_SHIFT;
 if (sar >= nitems(cpu_frequencies))
  return (0);

 hw_clockrate = cpu_frequencies[sar];

 return (hw_clockrate * 1000 * 1000);
}
