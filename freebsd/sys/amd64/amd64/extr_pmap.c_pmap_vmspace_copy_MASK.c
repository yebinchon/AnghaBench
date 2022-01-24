#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pmap_t ;
struct TYPE_9__ {scalar_t__ pm_type; } ;

/* Variables and functions */
 int CPUID_STDEXT2_PKU ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ PT_X86 ; 
 int cpu_stdext_feature2 ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(pmap_t dst_pmap, pmap_t src_pmap)
{
	int error;

	if (dst_pmap->pm_type != src_pmap->pm_type ||
	    dst_pmap->pm_type != PT_X86 ||
	    (cpu_stdext_feature2 & CPUID_STDEXT2_PKU) == 0)
		return (0);
	for (;;) {
		if (dst_pmap < src_pmap) {
			FUNC0(dst_pmap);
			FUNC0(src_pmap);
		} else {
			FUNC0(src_pmap);
			FUNC0(dst_pmap);
		}
		error = FUNC2(dst_pmap, src_pmap);
		/* Clean up partial copy on failure due to no memory. */
		if (error == ENOMEM)
			FUNC3(dst_pmap);
		FUNC1(src_pmap);
		FUNC1(dst_pmap);
		if (error != ENOMEM)
			break;
		FUNC4(NULL);
	}
	return (error);
}