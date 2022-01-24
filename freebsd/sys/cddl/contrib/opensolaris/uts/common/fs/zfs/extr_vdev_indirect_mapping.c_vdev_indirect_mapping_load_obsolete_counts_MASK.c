#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* vim_phys; int /*<<< orphan*/  vim_objset; scalar_t__ vim_havecounts; } ;
typedef  TYPE_2__ vdev_indirect_mapping_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int vimp_num_entries; int /*<<< orphan*/  vimp_counts_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

uint32_t *
FUNC6(vdev_indirect_mapping_t *vim)
{
	FUNC0(FUNC5(vim));

	uint64_t counts_size =
	    vim->vim_phys->vimp_num_entries * sizeof (uint32_t);
	uint32_t *counts = FUNC4(counts_size, KM_SLEEP);
	if (vim->vim_havecounts) {
		FUNC1(FUNC3(vim->vim_objset,
		    vim->vim_phys->vimp_counts_object,
		    0, counts_size,
		    counts, DMU_READ_PREFETCH));
	} else {
		FUNC2(counts, counts_size);
	}
	return (counts);
}