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
struct fdt_property {void* data; void* len; void* nameoff; void* tag; } ;

/* Variables and functions */
 int FDT_ERR_NOSPACE ; 
 int FDT_PROP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (void*,char const*) ; 
 struct fdt_property* FUNC4 (void*,scalar_t__) ; 

int FUNC5(void *fdt, const char *name, int len, void **valp)
{
	struct fdt_property *prop;
	int nameoff;

	FUNC0(fdt);

	nameoff = FUNC3(fdt, name);
	if (nameoff == 0)
		return -FDT_ERR_NOSPACE;

	prop = FUNC4(fdt, sizeof(*prop) + FUNC1(len));
	if (! prop)
		return -FDT_ERR_NOSPACE;

	prop->tag = FUNC2(FDT_PROP);
	prop->nameoff = FUNC2(nameoff);
	prop->len = FUNC2(len);
	*valp = prop->data;
	return 0;
}