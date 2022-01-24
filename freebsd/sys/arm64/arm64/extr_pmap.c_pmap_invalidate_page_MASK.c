#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint64_t ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_4__ {int /*<<< orphan*/  pm_cookie; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ish ; 
 int /*<<< orphan*/  ishst ; 
 TYPE_1__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static __inline void
FUNC7(pmap_t pmap, vm_offset_t va)
{
	uint64_t r;

	FUNC5();
	FUNC3(ishst);
	if (pmap == kernel_pmap) {
		r = FUNC2(va);
		__asm __volatile("tlbi vaae1is, %0" : : "r" (r));
	} else {
		r = FUNC0(FUNC1(pmap->pm_cookie)) | FUNC2(va);
		__asm __volatile("tlbi vae1is, %0" : : "r" (r));
	}
	FUNC3(ish);
	FUNC4();
	FUNC6();
}