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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ const INT_MAX ; 
 scalar_t__ MODE_COMPRESS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ const next_flush ; 
 scalar_t__ opt_flush_timeout ; 
 scalar_t__ opt_mode ; 

extern int
FUNC1(void)
{
	if (opt_flush_timeout == 0 || opt_mode != MODE_COMPRESS)
		return -1;

	const uint64_t now = FUNC0();
	if (now >= next_flush)
		return 0;

	const uint64_t remaining = next_flush - now;
	return remaining > INT_MAX ? INT_MAX : (int)remaining;
}