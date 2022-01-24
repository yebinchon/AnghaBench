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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ initcount ; 
 scalar_t__ mutex_file ; 

void
FUNC2()
{
	if (initcount != 0) {
		if (mutex_file)
			FUNC1(mutex_file, "initcount %ld\n", initcount);
		FUNC0();
	}
}