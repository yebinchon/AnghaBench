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
struct calendar {int monthday; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ DAY_NTP_STARTS ; 
 scalar_t__ NTP_TO_UNIX_DAYS ; 
 scalar_t__ FUNC0 (struct calendar*) ; 
 int /*<<< orphan*/  FUNC1 (struct calendar*) ; 

int32_t
FUNC2(void)
{
	struct calendar jd;
	int32_t		ed;
	
	if (!FUNC1(&jd))
		return NTP_TO_UNIX_DAYS;

	/* The time zone of the build stamp is unspecified; we remove
	 * one day to provide a certain slack. And in case somebody
	 * fiddled with the system clock, we make sure we do not go
	 * before the UNIX epoch (1970-01-01). It's probably not possible
	 * to do this to the clock on most systems, but there are other
	 * ways to tweak the build stamp.
	 */
	jd.monthday -= 1;
	ed = FUNC0(&jd) - DAY_NTP_STARTS;
	return (ed < NTP_TO_UNIX_DAYS) ? NTP_TO_UNIX_DAYS : ed;
}