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
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int FDT_ERR_NOTFOUND ; 
 int FUNC1 (void const*,int,int*) ; 
 scalar_t__ FUNC2 (void const*,int,char const*,int) ; 

int FUNC3(const void *fdt, int offset,
			       const char *name, int namelen)
{
	int depth;

	FUNC0(fdt);

	for (depth = 0;
	     (offset >= 0) && (depth >= 0);
	     offset = FUNC1(fdt, offset, &depth))
		if ((depth == 1)
		    && FUNC2(fdt, offset, name, namelen))
			return offset;

	if (depth < 0)
		return -FDT_ERR_NOTFOUND;
	return offset; /* error */
}