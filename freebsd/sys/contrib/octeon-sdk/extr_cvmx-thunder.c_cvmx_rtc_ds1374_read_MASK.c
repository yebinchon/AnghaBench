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
 int FUNC1 (int /*<<< orphan*/ ) ; 

uint32_t FUNC2(void)
{
    int      retry;
    uint8_t  sec;
    uint32_t time;

    for(retry=0; retry<2; retry++)
    {
        time = FUNC0(CVMX_RTC_DS1374_ADDR, 0x0);
        time |= (FUNC1(CVMX_RTC_DS1374_ADDR) & 0xff) << 8;
        time |= (FUNC1(CVMX_RTC_DS1374_ADDR) & 0xff) << 16;
        time |= (FUNC1(CVMX_RTC_DS1374_ADDR) & 0xff) << 24;

        sec = FUNC0(CVMX_RTC_DS1374_ADDR, 0x0);
        if (sec == (time & 0xff))
            break; /* Time did not roll-over, value is correct */
    }

    return time;
}