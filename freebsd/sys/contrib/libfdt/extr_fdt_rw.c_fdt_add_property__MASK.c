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
struct fdt_property {void* len; void* nameoff; void* tag; } ;

/* Variables and functions */
 int FDT_PROP ; 
 int FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (void*,int) ; 
 int FUNC3 (void*,char const*) ; 
 struct fdt_property* FUNC4 (void*,int) ; 
 int FUNC5 (void*,struct fdt_property*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void *fdt, int nodeoffset, const char *name,
			     int len, struct fdt_property **prop)
{
	int proplen;
	int nextoffset;
	int namestroff;
	int err;

	if ((nextoffset = FUNC2(fdt, nodeoffset)) < 0)
		return nextoffset;

	namestroff = FUNC3(fdt, name);
	if (namestroff < 0)
		return namestroff;

	*prop = FUNC4(fdt, nextoffset);
	proplen = sizeof(**prop) + FUNC0(len);

	err = FUNC5(fdt, *prop, 0, proplen);
	if (err)
		return err;

	(*prop)->tag = FUNC1(FDT_PROP);
	(*prop)->nameoff = FUNC1(namestroff);
	(*prop)->len = FUNC1(len);
	return 0;
}