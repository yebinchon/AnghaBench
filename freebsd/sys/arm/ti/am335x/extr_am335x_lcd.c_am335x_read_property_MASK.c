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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, phandle_t node, const char *name, uint32_t *val)
{
	pcell_t cell;

	if ((FUNC0(node, name, &cell, sizeof(cell))) <= 0) {
		FUNC1(dev, "missing '%s' attribute in LCD panel info\n",
		    name);
		return (ENXIO);
	}

	*val = cell;

	return (0);
}