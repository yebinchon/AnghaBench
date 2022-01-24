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
struct timeval {long tv_sec; long tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 int FUNC1 (struct timeval*,long) ; 
 scalar_t__ no_set ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(
	 long offset
	 )
{
	struct timeval time_offset;

	if (no_set)
	    return;

	time_offset.tv_sec  = offset / 1000000;
	time_offset.tv_usec = offset % 1000000;

	FUNC0("adj_time: %ld us ", (long int)offset);
	if (FUNC1(&time_offset, 0L) == -1)
	    FUNC2("adjtime()");
}