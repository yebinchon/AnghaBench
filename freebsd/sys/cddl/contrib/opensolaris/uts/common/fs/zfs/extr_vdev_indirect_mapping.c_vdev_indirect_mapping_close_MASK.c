#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* vim_phys; int /*<<< orphan*/ * vim_dbuf; scalar_t__ vim_object; int /*<<< orphan*/ * vim_objset; struct TYPE_9__* vim_entries; } ;
typedef  TYPE_2__ vdev_indirect_mapping_t ;
typedef  int uint64_t ;
struct TYPE_8__ {scalar_t__ vimp_num_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(vdev_indirect_mapping_t *vim)
{
	FUNC0(FUNC4(vim));

	if (vim->vim_phys->vimp_num_entries > 0) {
		uint64_t map_size = FUNC3(vim);
		FUNC2(vim->vim_entries, map_size);
		vim->vim_entries = NULL;
	}

	FUNC1(vim->vim_dbuf, vim);

	vim->vim_objset = NULL;
	vim->vim_object = 0;
	vim->vim_dbuf = NULL;
	vim->vim_phys = NULL;

	FUNC2(vim, sizeof (*vim));
}