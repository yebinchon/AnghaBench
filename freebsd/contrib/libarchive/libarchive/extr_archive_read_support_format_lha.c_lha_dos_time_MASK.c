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
typedef  int /*<<< orphan*/  ts ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_isdst; } ;

/* Variables and functions */
 int FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*) ; 

__attribute__((used)) static time_t
FUNC3(const unsigned char *p)
{
	int msTime, msDate;
	struct tm ts;

	msTime = FUNC0(p);
	msDate = FUNC0(p+2);

	FUNC1(&ts, 0, sizeof(ts));
	ts.tm_year = ((msDate >> 9) & 0x7f) + 80;   /* Years since 1900. */
	ts.tm_mon = ((msDate >> 5) & 0x0f) - 1;     /* Month number.     */
	ts.tm_mday = msDate & 0x1f;		    /* Day of month.     */
	ts.tm_hour = (msTime >> 11) & 0x1f;
	ts.tm_min = (msTime >> 5) & 0x3f;
	ts.tm_sec = (msTime << 1) & 0x3e;
	ts.tm_isdst = -1;
	return (FUNC2(&ts));
}