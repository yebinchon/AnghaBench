
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_2__ {void* cf_sleep; } ;



 scalar_t__ aml8726_aobus_kva_base ;
 int aml8726_fixup_busfreq () ;
 int aml8726_identify_soc () ;
 int aml8726_soc_hw_rev ;
 scalar_t__ cpufunc_nullop ;
 TYPE_1__ cpufuncs ;
 scalar_t__ devmap_ptov (int,int) ;

void
platform_gpio_init(void)
{
 aml8726_aobus_kva_base =
     (vm_offset_t)devmap_ptov(0xc8100000, 0x100000);






 aml8726_identify_soc();






 switch (aml8726_soc_hw_rev) {
 case 128:
  cpufuncs.cf_sleep = (void *)cpufunc_nullop;
  break;
 default:
  break;
 }
 aml8726_fixup_busfreq();
}
