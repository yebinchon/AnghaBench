
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_RTC_DS1374_ADDR ;
 scalar_t__ RTC_WD_ALM_CNT_BYTE0_ADDR ;
 int cvmx_twsi_write8 (int ,scalar_t__,int) ;

__attribute__((used)) static int cvmx_rtc_ds1374_alarm_counter_set(uint32_t interval)
{
    int i;
    int rc = 0;

    for(i=0;i<3;i++)
    {
        rc |= cvmx_twsi_write8(CVMX_RTC_DS1374_ADDR, RTC_WD_ALM_CNT_BYTE0_ADDR+i, interval & 0xFF);
        interval >>= 8;
    }
    return rc;
}
