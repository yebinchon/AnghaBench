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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  oslar_el1 ; 

void
FUNC2(void)
{

	/* Clear OS lock */
	FUNC0(oslar_el1, 0);

	/* This permits DDB to use debug registers for watchpoints. */
	FUNC1();

	/* TODO: Eventually will need to initialize debug registers here. */
}