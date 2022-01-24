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
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int ATTR_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline pd_entry_t *
FUNC3(pd_entry_t *l0, vm_offset_t va)
{
	pd_entry_t *l1;

	l1 = (pd_entry_t *)FUNC0(FUNC2(l0) & ~ATTR_MASK);
	return (&l1[FUNC1(va)]);
}