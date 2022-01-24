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
struct fdt_property {int /*<<< orphan*/  nameoff; } ;

/* Variables and functions */
 int FDT_ERR_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void const*,int) ; 
 struct fdt_property* FUNC2 (void const*,int,int*) ; 
 int FUNC3 (void const*,int) ; 
 scalar_t__ FUNC4 (void const*,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static const struct fdt_property *FUNC5(const void *fdt,
						            int offset,
						            const char *name,
						            int namelen,
							    int *lenp,
							    int *poffset)
{
	for (offset = FUNC1(fdt, offset);
	     (offset >= 0);
	     (offset = FUNC3(fdt, offset))) {
		const struct fdt_property *prop;

		if (!(prop = FUNC2(fdt, offset, lenp))) {
			offset = -FDT_ERR_INTERNAL;
			break;
		}
		if (FUNC4(fdt, FUNC0(prop->nameoff),
				   name, namelen)) {
			if (poffset)
				*poffset = offset;
			return prop;
		}
	}

	if (lenp)
		*lenp = offset;
	return NULL;
}