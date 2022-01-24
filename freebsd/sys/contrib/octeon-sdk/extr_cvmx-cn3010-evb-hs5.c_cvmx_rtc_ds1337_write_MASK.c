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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_RTC_DS1337_ADDR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tm*) ; 
 scalar_t__ FUNC5 (struct tm*) ; 

int FUNC6(uint32_t time)
{
    int       i, rc, retry;
    struct tm tms;
    uint8_t   reg[8];
    uint8_t   sec;
    time_t    time_from_epoch = time;


    FUNC4(&time_from_epoch, &tms);

    if (FUNC5(&tms))
    {
	FUNC1("Error: RTC was passed wrong calendar values, write failed\n");
	goto tm_invalid;
    }

    reg[0] = FUNC0(tms.tm_sec);
    reg[1] = FUNC0(tms.tm_min);
    reg[2] = FUNC0(tms.tm_hour);      /* Force 0..23 format even if using AM/PM */
    reg[3] = FUNC0(tms.tm_wday + 1);
    reg[4] = FUNC0(tms.tm_mday);
    reg[5] = FUNC0(tms.tm_mon + 1);
    if (tms.tm_year >= 100)             /* Set century bit*/
    {
	reg[5] |= 0x80;
    }
    reg[6] = FUNC0(tms.tm_year % 100);

    /* Lockless write: detects the infrequent roll-over and retries */
    for(retry=0; retry<2; retry++)
    {
	rc = 0;
	for(i=0; i<7; i++)
	{
	    rc |= FUNC3(CVMX_RTC_DS1337_ADDR, i, reg[i]);
	}

	sec = FUNC2(CVMX_RTC_DS1337_ADDR, 0x0);
	if ((sec & 0xf) == (reg[0] & 0xf))
	    break; /* Time did not roll-over, value is correct */
    }

    return (rc ? -1 : 0);

 tm_invalid:
    return -1;
}