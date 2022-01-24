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
struct fdt_property {void* data; } ;

/* Variables and functions */
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*,int,char const*,int,struct fdt_property**) ; 
 int FUNC2 (void*,int,char const*,int,struct fdt_property**) ; 

int FUNC3(void *fdt, int nodeoffset, const char *name,
			    int len, void **prop_data)
{
	struct fdt_property *prop;
	int err;

	FUNC0(fdt);

	err = FUNC2(fdt, nodeoffset, name, len, &prop);
	if (err == -FDT_ERR_NOTFOUND)
		err = FUNC1(fdt, nodeoffset, name, len, &prop);
	if (err)
		return err;

	*prop_data = prop->data;
	return 0;
}