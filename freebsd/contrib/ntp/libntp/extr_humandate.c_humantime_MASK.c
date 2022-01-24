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
struct tm {int tm_hour; int tm_min; int tm_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int,int,int) ; 

const char *
FUNC3(
	time_t cursec
	)
{
	char *		bp;
	struct tm *	tm;
	
	tm = FUNC1(&cursec);
	if (!tm)
		return "--:--:--";

	FUNC0(bp);
	
	FUNC2(bp, LIB_BUFLENGTH, "%02d:%02d:%02d",
		 tm->tm_hour, tm->tm_min, tm->tm_sec);
		
	return bp;
}