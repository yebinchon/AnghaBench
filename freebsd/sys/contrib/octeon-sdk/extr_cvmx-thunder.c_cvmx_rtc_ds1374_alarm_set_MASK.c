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

/* Variables and functions */
 int /*<<< orphan*/  CVMX_RTC_DS1374_ADDR ; 
 int /*<<< orphan*/  RTC_CTL_ADDR ; 
 int RTC_CTL_BIT_WACE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(int alarm_on)
{
    uint8_t val;

    if (alarm_on)
    {
        val = FUNC0(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR);
        FUNC1(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR, val | RTC_CTL_BIT_WACE);
    }
    else
    {
        val = FUNC0(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR);
        FUNC1(CVMX_RTC_DS1374_ADDR,RTC_CTL_ADDR, val & ~RTC_CTL_BIT_WACE);
    }
    return 0;
}