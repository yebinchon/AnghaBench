
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int CVMX_RTC_DS1374_ADDR ;
 int cvmx_twsi_read8 (int ,int) ;
 int cvmx_twsi_write8 (int ,int,int) ;

int cvmx_rtc_ds1374_write(uint32_t time)
{
    int rc;
    int retry;
    uint8_t sec;

    for(retry=0; retry<2; retry++)
    {
        rc = cvmx_twsi_write8(CVMX_RTC_DS1374_ADDR, 0x0, time & 0xff);
        rc |= cvmx_twsi_write8(CVMX_RTC_DS1374_ADDR, 0x1, (time >> 8) & 0xff);
        rc |= cvmx_twsi_write8(CVMX_RTC_DS1374_ADDR, 0x2, (time >> 16) & 0xff);
        rc |= cvmx_twsi_write8(CVMX_RTC_DS1374_ADDR, 0x3, (time >> 24) & 0xff);
        sec = cvmx_twsi_read8(CVMX_RTC_DS1374_ADDR, 0x0);
        if (sec == (time & 0xff))
            break;
    }

    return (rc ? -1 : 0);
}
