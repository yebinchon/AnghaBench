
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TCLK_200MHZ ;
 int TCLK_250MHZ ;
 int TCLK_MASK_ARMADA38X ;
 int TCLK_SHIFT_ARMADA38X ;
 scalar_t__ get_sar_value_armada38x () ;

uint32_t
get_tclk_armada38x(void)
{
 uint32_t sar;





 sar = (uint32_t)get_sar_value_armada38x();
 sar = (sar & TCLK_MASK_ARMADA38X) >> TCLK_SHIFT_ARMADA38X;
 if (sar == 0)
  return (TCLK_250MHZ);
 else
  return (TCLK_200MHZ);
}
