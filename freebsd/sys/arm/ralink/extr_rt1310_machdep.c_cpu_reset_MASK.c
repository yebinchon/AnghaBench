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
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 

void
FUNC3(void)
{
	bus_space_tag_t bst;
	bus_space_handle_t bsh;

	bst = fdtbus_bs_tag;

	/* Enable WDT */
	/* Instant assert of RESETOUT_N with pulse length 1ms */
	FUNC0(bst, 0x1e8c0000, 0x20000, 0, &bsh);
	FUNC2(bst, bsh, 0, 13000);
	FUNC2(bst, bsh, 8, (1<<3) | (1<<4) | 7);
	FUNC1(bst, bsh, 0x20000);

	for (;;)
		continue;
}