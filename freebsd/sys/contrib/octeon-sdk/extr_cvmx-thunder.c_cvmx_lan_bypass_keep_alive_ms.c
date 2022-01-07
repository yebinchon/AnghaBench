
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cvmx_rtc_ds1374_alarm_counter_set (int) ;

void cvmx_lan_bypass_keep_alive_ms(uint32_t interval_ms)
{
    cvmx_rtc_ds1374_alarm_counter_set((interval_ms * 0x1000) / 1000);
}
