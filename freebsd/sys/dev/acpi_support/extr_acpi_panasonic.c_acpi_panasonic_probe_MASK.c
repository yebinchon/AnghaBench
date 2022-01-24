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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	static char *mat_ids[] = { "MAT0019", NULL };
	int rv;
	
	if (FUNC1("panasonic") ||
	    FUNC3(dev) != 0)
		return (ENXIO);
	rv = FUNC0(FUNC2(dev), dev, mat_ids, NULL);

	if (rv <= 0)
		FUNC4(dev, "Panasonic Notebook Hotkeys");
	return (rv);
}