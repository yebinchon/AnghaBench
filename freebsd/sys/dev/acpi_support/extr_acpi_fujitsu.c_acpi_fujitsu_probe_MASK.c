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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fujitsu_ids ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	char *name;
	char buffer[64];
	int rv;

	rv =  FUNC0(FUNC2(dev), dev, fujitsu_ids, &name);
	if (FUNC1("fujitsu") || rv > 0 || FUNC3(dev) > 1)
		return (ENXIO);
	FUNC5(buffer, "Fujitsu Function Hotkeys %s", name);
	FUNC4(dev, buffer);

	return (rv);
}