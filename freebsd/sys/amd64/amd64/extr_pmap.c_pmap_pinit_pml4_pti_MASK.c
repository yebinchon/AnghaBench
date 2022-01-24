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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  pml4_entry_t ;

/* Variables and functions */
 int NPML4EPG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pti_pml4 ; 

__attribute__((used)) static void
FUNC2(vm_page_t pml4pg)
{
	pml4_entry_t *pm_pml4;
	int i;

	pm_pml4 = (pml4_entry_t *)FUNC0(FUNC1(pml4pg));
	for (i = 0; i < NPML4EPG; i++)
		pm_pml4[i] = pti_pml4[i];
}