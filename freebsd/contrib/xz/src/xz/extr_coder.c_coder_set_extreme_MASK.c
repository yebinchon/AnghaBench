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
 int /*<<< orphan*/  LZMA_PRESET_EXTREME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  preset_number ; 

extern void
FUNC1(void)
{
	preset_number |= LZMA_PRESET_EXTREME;
	FUNC0();
	return;
}