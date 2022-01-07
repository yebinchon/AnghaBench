
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYPASS_EN ;
 int WDT_BP_CLR ;
 int cvmx_gpio_clear (int ) ;
 int cvmx_gpio_set (int ) ;
 int cvmx_rtc_ds1374_alarm_set (int ) ;
 int cvmx_wait (int const) ;

__attribute__((used)) static int cvmx_lan_bypass_init(void)
{
    const int CLR_PULSE = 100;


    cvmx_gpio_clear(BYPASS_EN);


    cvmx_rtc_ds1374_alarm_set(0);


    cvmx_gpio_clear(WDT_BP_CLR);
    cvmx_wait(CLR_PULSE);
    cvmx_gpio_set(WDT_BP_CLR);
    return 0;
}
