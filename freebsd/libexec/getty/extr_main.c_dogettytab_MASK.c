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
 int APset ; 
 int EPset ; 
 int NPset ; 
 int OPset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  tabent ; 
 int /*<<< orphan*/  tname ; 

__attribute__((used)) static void
FUNC2(void)
{
	
	/* Read the database entry. */
	FUNC0(tname, tabent);

	/*
	 * Avoid inheriting the parity values from the default entry
	 * if any of them is set in the current entry.
	 * Mixing different parity settings is unreasonable.
	 */
	if (OPset || EPset || APset || NPset)
		OPset = EPset = APset = NPset = 1;

	/* Fill in default values for unset capabilities. */
	FUNC1();
}