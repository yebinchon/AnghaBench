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
struct vmm_stat_type {char* desc; scalar_t__ scope; scalar_t__ nelems; scalar_t__ index; } ;

/* Variables and functions */
 scalar_t__ MAX_VMM_STAT_ELEMS ; 
 scalar_t__ VMM_STAT_SCOPE_AMD ; 
 scalar_t__ VMM_STAT_SCOPE_INTEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ vst_num_elems ; 
 int /*<<< orphan*/  vst_num_types ; 
 struct vmm_stat_type** vsttab ; 

void
FUNC3(void *arg)
{
	struct vmm_stat_type *vst = arg;

	/* We require all stats to identify themselves with a description */
	if (vst->desc == NULL)
		return;

	if (vst->scope == VMM_STAT_SCOPE_INTEL && !FUNC2())
		return;

	if (vst->scope == VMM_STAT_SCOPE_AMD && !FUNC1())
		return;

	if (vst_num_elems + vst->nelems >= MAX_VMM_STAT_ELEMS) {
		FUNC0("Cannot accommodate vmm stat type \"%s\"!\n", vst->desc);
		return;
	}

	vst->index = vst_num_elems;
	vst_num_elems += vst->nelems;

	vsttab[vst_num_types++] = vst;
}