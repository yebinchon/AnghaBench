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
typedef  scalar_t__ register_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 

int
FUNC2(int seconds)
{
	register_t stoptime;

	stoptime = FUNC0() + seconds * 100000000;	/* 100 MHz. */
	do {
		if (FUNC1())
			return (1);
	} while (FUNC0() < stoptime);
	return (0);
}