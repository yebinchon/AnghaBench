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
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,char**,int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  isab_devclass ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	static char *isa_ids[] = { "PNP0A05", "PNP0A06", NULL };
	int rv;
	
	if (FUNC1("isab") ||
	    FUNC2(isab_devclass, 0) != dev)
		return (ENXIO);
	rv = FUNC0(FUNC3(dev), dev, isa_ids, NULL);
	if (rv <= 0)
		FUNC4(dev, "ACPI Generic ISA bridge");
	return (rv);
}