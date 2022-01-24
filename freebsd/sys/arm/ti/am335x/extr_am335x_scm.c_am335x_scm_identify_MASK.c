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
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ CHIP_AM335X ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4(driver_t *driver, device_t parent)
{
	device_t child;

	/* AM335x only. */
	if (FUNC3() != CHIP_AM335X)
		return;

	/* Make sure we attach only once. */
	if (FUNC1(parent, "am335x_scm", -1) != NULL)
		return;

	child = FUNC0(parent, "am335x_scm", -1);
	if (child == NULL)
		FUNC2(parent, "cannot add ti_scm child\n");
}