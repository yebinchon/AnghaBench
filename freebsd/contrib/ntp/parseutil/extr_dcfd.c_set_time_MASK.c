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
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct timeval*,long) ; 
 scalar_t__ no_set ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 
 int FUNC4 (struct timeval*,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,struct timeval*) ; 

__attribute__((used)) static void
FUNC7(
	 struct timeval *offset
	 )
{
	struct timeval the_time;

	if (no_set)
	    return;

	FUNC0("set_time: %s ", FUNC3(offset));
	FUNC5(LOG_NOTICE, "setting time (offset %s)", FUNC3(offset));

	if (FUNC1(&the_time, 0L) == -1)
	{
		FUNC2("gettimeofday()");
	}
	else
	{
		FUNC6(&the_time, offset);
		if (FUNC4(&the_time, 0L) == -1)
		{
			FUNC2("settimeofday()");
		}
	}
}