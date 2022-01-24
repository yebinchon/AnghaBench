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
struct tm {int tm_year; int tm_yday; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int) ; 

__attribute__((used)) static void
FUNC3(int64_t days, struct tm *result)
{
	int year = 1970;
	int new_year;

	while (days < 0 || days >= (int64_t) (FUNC1(year) ? 366 : 365)) {
		new_year = year + (int) FUNC0(days, 365);
		days -= (new_year - year) * 365;
		days -= FUNC2(year, new_year);
		year  = new_year;
	}
	result->tm_year = year;
	result->tm_yday = (int) days;
}