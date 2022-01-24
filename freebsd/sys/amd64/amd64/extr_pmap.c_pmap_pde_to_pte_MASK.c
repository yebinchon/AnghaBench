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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int PG_FRAME ; 
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline pt_entry_t *
FUNC2(pd_entry_t *pde, vm_offset_t va)
{
	pt_entry_t *pte;

	pte = (pt_entry_t *)FUNC0(*pde & PG_FRAME);
	return (&pte[FUNC1(va)]);
}