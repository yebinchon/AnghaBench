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
typedef  void* u_long ;
struct devmap_entry {void* pd_size; void* pd_pa; int /*<<< orphan*/  pd_va; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  MV_CESA_SRAM_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**,void**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct devmap_entry *map)
{
	phandle_t child, root;
	u_long base, size;
	/*
	 * SRAM range.
	 */
	if ((root = FUNC0("/")) == 0)
		return (ENXIO);

	if ((child = FUNC0("/sram")) != 0)
		if (FUNC3(child, "mrvl,cesa-sram") ||
		    FUNC3(child, "mrvl,scratchpad"))
			goto moveon;

	if ((child = FUNC1(root, "mrvl,cesa-sram", 0)) == 0 &&
	    (child = FUNC1(root, "mrvl,scratchpad", 0)) == 0)
			goto out;

moveon:
	if (FUNC2(child, &base, &size) != 0)
		return (EINVAL);

	map->pd_va = MV_CESA_SRAM_BASE; /* XXX */
	map->pd_pa = base;
	map->pd_size = size;

	return (0);
out:
	return (ENOENT);

}