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
struct tm {int tm_yday; int tm_wday; scalar_t__ tm_year; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ tm_year_base ; 

__attribute__((used)) static void
FUNC1 (struct tm *timeptr, int wnum)
{
    int fday = FUNC0 (timeptr->tm_year + tm_year_base);

    timeptr->tm_yday = wnum * 7 + timeptr->tm_wday - fday;
    if (timeptr->tm_yday < 0) {
	timeptr->tm_wday = fday;
	timeptr->tm_yday = 0;
    }
}