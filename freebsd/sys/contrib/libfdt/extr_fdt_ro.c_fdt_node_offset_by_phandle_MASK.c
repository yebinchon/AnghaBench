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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int FDT_ERR_BADPHANDLE ; 
 int FUNC1 (void const*,int) ; 
 int FUNC2 (void const*,int,int /*<<< orphan*/ *) ; 

int FUNC3(const void *fdt, uint32_t phandle)
{
	int offset;

	if ((phandle == 0) || (phandle == -1))
		return -FDT_ERR_BADPHANDLE;

	FUNC0(fdt);

	/* FIXME: The algorithm here is pretty horrible: we
	 * potentially scan each property of a node in
	 * fdt_get_phandle(), then if that didn't find what
	 * we want, we scan over them again making our way to the next
	 * node.  Still it's the easiest to implement approach;
	 * performance can come later. */
	for (offset = FUNC2(fdt, -1, NULL);
	     offset >= 0;
	     offset = FUNC2(fdt, offset, NULL)) {
		if (FUNC1(fdt, offset) == phandle)
			return offset;
	}

	return offset; /* error from fdt_next_node() */
}