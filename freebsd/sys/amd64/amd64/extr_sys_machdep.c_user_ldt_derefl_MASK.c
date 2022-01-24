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
typedef  int vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
struct user_segment_descriptor {int dummy; } ;
struct proc_ldt {scalar_t__ ldt_refcnt; scalar_t__ ldt_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SUBPROC ; 
 int /*<<< orphan*/  FUNC0 (struct proc_ldt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int max_ldt_segment ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct proc_ldt *pldt)
{
	vm_offset_t sva;
	vm_size_t sz;

	if (--pldt->ldt_refcnt == 0) {
		sva = (vm_offset_t)pldt->ldt_base;
		sz = max_ldt_segment * sizeof(struct user_segment_descriptor);
		FUNC2(sva, sva + sz);
		FUNC1(sva, sz);
		FUNC0(pldt, M_SUBPROC);
	}
}