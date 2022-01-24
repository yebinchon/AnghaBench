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
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 size_t FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 size_t FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,size_t) ; 

int FUNC7(void *fdt, void *buf, int bufsize)
{
	size_t headsize, tailsize;
	char *oldtail, *newtail;

	FUNC0(fdt);

	headsize = FUNC1(fdt);
	tailsize = FUNC4(fdt);

	if ((headsize + tailsize) > bufsize)
		return -FDT_ERR_NOSPACE;

	oldtail = (char *)fdt + FUNC5(fdt) - tailsize;
	newtail = (char *)buf + bufsize - tailsize;

	/* Two cases to avoid clobbering data if the old and new
	 * buffers partially overlap */
	if (buf <= fdt) {
		FUNC6(buf, fdt, headsize);
		FUNC6(newtail, oldtail, tailsize);
	} else {
		FUNC6(newtail, oldtail, tailsize);
		FUNC6(buf, fdt, headsize);
	}

	FUNC2(buf, bufsize);
	FUNC3(buf, bufsize);

	return 0;
}