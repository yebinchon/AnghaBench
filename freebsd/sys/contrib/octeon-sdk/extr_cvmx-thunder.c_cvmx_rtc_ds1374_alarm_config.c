
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_RTC_DS1374_ADDR ;
 int RTC_CTL_ADDR ;
 int RTC_CTL_BIT_AIE ;
 int RTC_CTL_BIT_EOSC ;
 int RTC_CTL_BIT_WDSTR ;
 int RTC_CTL_BIT_WD_ALM ;
 int cvmx_twsi_read8 (int ,int ) ;
 int cvmx_twsi_write8 (int ,int ,int) ;

__attribute__((used)) static int cvmx_rtc_ds1374_alarm_config(int WD, int WDSTR, int AIE)
{
    int val;

    val = cvmx_twsi_read8(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR);
    val = val & ~RTC_CTL_BIT_EOSC;
    WD?(val = val | RTC_CTL_BIT_WD_ALM):(val = val & ~RTC_CTL_BIT_WD_ALM);
    WDSTR?(val = val | RTC_CTL_BIT_WDSTR):(val = val & ~RTC_CTL_BIT_WDSTR);
    AIE?(val = val | RTC_CTL_BIT_AIE):(val = val & ~RTC_CTL_BIT_AIE);
    cvmx_twsi_write8(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR, val);
    return 0;
}
