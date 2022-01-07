
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int ARM_TMR_FREQUENCY_VARIES ;
 int arm_tmr_change_frequency (int ) ;
 int fix_fdt_interrupt_data () ;
 int fix_fdt_iomuxc_data () ;

__attribute__((used)) static int
imx6_attach(platform_t plat)
{


 fix_fdt_interrupt_data();


 fix_fdt_iomuxc_data();


 arm_tmr_change_frequency(ARM_TMR_FREQUENCY_VARIES);

 return (0);
}
