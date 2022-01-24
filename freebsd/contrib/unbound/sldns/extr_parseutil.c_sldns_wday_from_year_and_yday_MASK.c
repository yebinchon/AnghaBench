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
struct tm {int tm_wday; int tm_year; int tm_yday; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2(struct tm *result)
{
	result->tm_wday = 4 /* 1-1-1970 was a thursday */
			+ FUNC0((result->tm_year - 1970), 7) * FUNC0(365, 7)
			+ FUNC1(1970, result->tm_year)
			+ result->tm_yday;
	result->tm_wday = FUNC0(result->tm_wday, 7);
	if (result->tm_wday < 0) {
		result->tm_wday += 7;
	}
}