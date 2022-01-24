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
struct fdt_property {void const* data; int /*<<< orphan*/  len; int /*<<< orphan*/  nameoff; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct fdt_property* FUNC1 (void const*,int,int*) ; 
 char* FUNC2 (void const*,int) ; 
 int FUNC3 (void const*) ; 

const void *FUNC4(const void *fdt, int offset,
				  const char **namep, int *lenp)
{
	const struct fdt_property *prop;

	prop = FUNC1(fdt, offset, lenp);
	if (!prop)
		return NULL;
	if (namep)
		*namep = FUNC2(fdt, FUNC0(prop->nameoff));

	/* Handle realignment */
	if (FUNC3(fdt) < 0x10 && (offset + sizeof(*prop)) % 8 &&
	    FUNC0(prop->len) >= 8)
		return prop->data + 4;
	return prop->data;
}