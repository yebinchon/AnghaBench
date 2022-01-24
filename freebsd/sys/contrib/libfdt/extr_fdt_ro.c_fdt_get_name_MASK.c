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
struct fdt_node_header {char* name; } ;

/* Variables and functions */
 int FDT_ERR_BADSTRUCTURE ; 
 int FUNC0 (void const*) ; 
 int FUNC1 (void const*,int) ; 
 struct fdt_node_header* FUNC2 (void const*,int) ; 
 int FUNC3 (void const*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 

const char *FUNC6(const void *fdt, int nodeoffset, int *len)
{
	const struct fdt_node_header *nh = FUNC2(fdt, nodeoffset);
	const char *nameptr;
	int err;

	if (((err = FUNC0(fdt)) != 0)
	    || ((err = FUNC1(fdt, nodeoffset)) < 0))
			goto fail;

	nameptr = nh->name;

	if (FUNC3(fdt) < 0x10) {
		/*
		 * For old FDT versions, match the naming conventions of V16:
		 * give only the leaf name (after all /). The actual tree
		 * contents are loosely checked.
		 */
		const char *leaf;
		leaf = FUNC5(nameptr, '/');
		if (leaf == NULL) {
			err = -FDT_ERR_BADSTRUCTURE;
			goto fail;
		}
		nameptr = leaf+1;
	}

	if (len)
		*len = FUNC4(nameptr);

	return nameptr;

 fail:
	if (len)
		*len = err;
	return NULL;
}