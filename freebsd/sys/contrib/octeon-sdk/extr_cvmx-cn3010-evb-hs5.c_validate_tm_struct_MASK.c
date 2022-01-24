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
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_wday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static int FUNC1(struct tm * tms)
{
    int rc = 0;

    if (!tms)
	return -1;

    FUNC0(tms->tm_sec < 0  || tms->tm_sec > 60,  "second"); /* + Leap sec */
    FUNC0(tms->tm_min < 0  || tms->tm_min > 59,  "minute");
    FUNC0(tms->tm_hour < 0 || tms->tm_hour > 23, "hour");
    FUNC0(tms->tm_mday < 1 || tms->tm_mday > 31, "day");
    FUNC0(tms->tm_wday < 0 || tms->tm_wday > 6,  "day of week");
    FUNC0(tms->tm_mon < 0  || tms->tm_mon > 11,  "month");
    FUNC0(tms->tm_year < 0 || tms->tm_year > 200,"year");

    return rc;
}