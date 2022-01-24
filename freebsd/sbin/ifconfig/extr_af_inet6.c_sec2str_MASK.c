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
typedef  int time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long) ; 

__attribute__((used)) static char *
FUNC1(time_t total)
{
	static char result[256];
	int days, hours, mins, secs;
	int first = 1;
	char *p = result;

	if (0) {
		days = total / 3600 / 24;
		hours = (total / 3600) % 24;
		mins = (total / 60) % 60;
		secs = total % 60;

		if (days) {
			first = 0;
			p += FUNC0(p, "%dd", days);
		}
		if (!first || hours) {
			first = 0;
			p += FUNC0(p, "%dh", hours);
		}
		if (!first || mins) {
			first = 0;
			p += FUNC0(p, "%dm", mins);
		}
		FUNC0(p, "%ds", secs);
	} else
		FUNC0(result, "%lu", (unsigned long)total);

	return(result);
}