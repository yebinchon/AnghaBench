#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_RTC_DS1374_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

int FUNC2(uint32_t time)
{
    int      rc;
    int      retry;
    uint8_t  sec;

    for(retry=0; retry<2; retry++)
    {
        rc  = FUNC1(CVMX_RTC_DS1374_ADDR, 0x0, time & 0xff);
        rc |= FUNC1(CVMX_RTC_DS1374_ADDR, 0x1, (time >> 8) & 0xff);
        rc |= FUNC1(CVMX_RTC_DS1374_ADDR, 0x2, (time >> 16) & 0xff);
        rc |= FUNC1(CVMX_RTC_DS1374_ADDR, 0x3, (time >> 24) & 0xff);
        sec = FUNC0(CVMX_RTC_DS1374_ADDR, 0x0);
        if (sec == (time & 0xff))
            break; /* Time did not roll-over, value is correct */
    }

    return (rc ? -1 : 0);
}