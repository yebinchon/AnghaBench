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
typedef  int /*<<< orphan*/  vm_paddr_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int volatile*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int volatile*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void *
FUNC5(vm_paddr_t maxaddr)
{
	static volatile int iommu_initted;

	if (iommu_initted < 2) {
		if (FUNC1(&iommu_initted, 0, 1)) {
			FUNC4();
			FUNC2(&iommu_initted, 2);
		} else
			while (iommu_initted == 1)
				FUNC3();
	}
	return (FUNC0(maxaddr));
}