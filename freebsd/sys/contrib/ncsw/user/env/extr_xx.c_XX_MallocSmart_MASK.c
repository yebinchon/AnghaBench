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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ MALLOCSMART_SLICES ; 
 unsigned int MALLOCSMART_SLICE_SIZE ; 
 int /*<<< orphan*/  XX_MallocSmartLock ; 
 scalar_t__ FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 scalar_t__ XX_MallocSmartPool ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void *
FUNC5(uint32_t size, int memPartitionId, uint32_t alignment)
{
	unsigned int i;
	vm_offset_t addr;

	addr = 0;

	/* Convert alignment and size to number of slices */
	alignment = FUNC0(alignment);
	size = FUNC0(size);

	/* Lock resources */
	FUNC3(&XX_MallocSmartLock);

	/* Allocate region */
	for (i = 0; i + size <= MALLOCSMART_SLICES; i += alignment) {
		if (FUNC1(i, size)) {
			FUNC2(i, size);
			addr = (vm_offset_t)XX_MallocSmartPool +
			    (i * MALLOCSMART_SLICE_SIZE);
			break;
		}
	}

	/* Unlock resources */
	FUNC4(&XX_MallocSmartLock);

	return ((void *)addr);
}