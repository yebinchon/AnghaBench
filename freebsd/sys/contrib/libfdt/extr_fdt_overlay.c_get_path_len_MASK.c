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
 char* FUNC1 (void const*,int,int*) ; 
 int FUNC2 (void const*,int) ; 

__attribute__((used)) static int FUNC3(const void *fdt, int nodeoffset)
{
	int len = 0, namelen;
	const char *name;

	FUNC0(fdt);

	for (;;) {
		name = FUNC1(fdt, nodeoffset, &namelen);
		if (!name)
			return namelen;

		/* root? we're done */
		if (namelen == 0)
			break;

		nodeoffset = FUNC2(fdt, nodeoffset);
		if (nodeoffset < 0)
			return nodeoffset;
		len += namelen + 1;
	}

	/* in case of root pretend it's "/" */
	if (len == 0)
		len++;
	return len;
}