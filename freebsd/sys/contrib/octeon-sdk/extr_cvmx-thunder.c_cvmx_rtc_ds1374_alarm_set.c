
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CVMX_RTC_DS1374_ADDR ;
 int RTC_CTL_ADDR ;
 int RTC_CTL_BIT_WACE ;
 int cvmx_twsi_read8 (int ,int ) ;
 int cvmx_twsi_write8 (int ,int ,int) ;

__attribute__((used)) static int cvmx_rtc_ds1374_alarm_set(int alarm_on)
{
    uint8_t val;

    if (alarm_on)
    {
        val = cvmx_twsi_read8(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR);
        cvmx_twsi_write8(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR, val | RTC_CTL_BIT_WACE);
    }
    else
    {
        val = cvmx_twsi_read8(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR);
        cvmx_twsi_write8(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR, val & ~RTC_CTL_BIT_WACE);
    }
    return 0;
}
