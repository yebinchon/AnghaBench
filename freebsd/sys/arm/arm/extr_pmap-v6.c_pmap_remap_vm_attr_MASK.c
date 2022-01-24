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
typedef  scalar_t__ vm_memattr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * pte2_attr_tab ; 
 int /*<<< orphan*/ * tex_class ; 

void
FUNC2(vm_memattr_t old_attr, vm_memattr_t new_attr)
{
	int old_idx, new_idx;

	/* Map VM memattrs to indexes to tex_class table. */
	old_idx = FUNC0(pte2_attr_tab[(int)old_attr]);
	new_idx = FUNC0(pte2_attr_tab[(int)new_attr]);

	/* Replace TEX attribute and apply it. */
	tex_class[old_idx] = tex_class[new_idx];
	FUNC1();
}