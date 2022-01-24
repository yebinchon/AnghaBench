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
typedef  int /*<<< orphan*/  time_t ;
struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;

/* Variables and functions */
 int FUNC0 (struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char) ; 

__attribute__((used)) static void
FUNC4(unsigned char *p, time_t t)
{
	struct tm tm;

	FUNC1(&tm, &t);
	FUNC2(p+0, tm.tm_year);
	FUNC2(p+1, tm.tm_mon+1);
	FUNC2(p+2, tm.tm_mday);
	FUNC2(p+3, tm.tm_hour);
	FUNC2(p+4, tm.tm_min);
	FUNC2(p+5, tm.tm_sec);
	FUNC3(p+6, (char)(FUNC0(&tm)/(60*15)));
}