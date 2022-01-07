
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_rtc_ds1374_alarm_counter_set (int) ;

void cvmx_lan_bypass_keep_alive(void)
{
    cvmx_rtc_ds1374_alarm_counter_set(0x1000);
}
