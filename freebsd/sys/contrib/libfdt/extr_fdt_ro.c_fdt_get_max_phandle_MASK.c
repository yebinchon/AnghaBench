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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int FDT_ERR_NOTFOUND ; 
 scalar_t__ FUNC0 (void const*,int) ; 
 int FUNC1 (void const*,int,int /*<<< orphan*/ *) ; 

uint32_t FUNC2(const void *fdt)
{
	uint32_t max_phandle = 0;
	int offset;

	for (offset = FUNC1(fdt, -1, NULL);;
	     offset = FUNC1(fdt, offset, NULL)) {
		uint32_t phandle;

		if (offset == -FDT_ERR_NOTFOUND)
			return max_phandle;

		if (offset < 0)
			return (uint32_t)-1;

		phandle = FUNC0(fdt, offset);
		if (phandle == (uint32_t)-1)
			continue;

		if (phandle > max_phandle)
			max_phandle = phandle;
	}

	return 0;
}