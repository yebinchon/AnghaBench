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
typedef  int pdp_entry_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int PG_FRAME ; 
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline pd_entry_t *
FUNC2(pdp_entry_t *pdpe, vm_offset_t va)
{
	pd_entry_t *pde;

	pde = (pd_entry_t *)FUNC0(*pdpe & PG_FRAME);
	return (&pde[FUNC1(va)]);
}