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
typedef  TYPE_2__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_5__ {int /*<<< orphan*/  pat_mode; } ;
struct TYPE_6__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int X86_PG_A ; 
 int X86_PG_M ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int dmaplimit ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 int /*<<< orphan*/  qframe ; 
 int /*<<< orphan*/  qframe_mtx ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ ) ; 

vm_offset_t
FUNC7(vm_page_t m)
{
	vm_paddr_t paddr;

	paddr = FUNC2(m);
	if (paddr < dmaplimit)
		return (FUNC1(paddr));
	FUNC3(&qframe_mtx);
	FUNC0(*FUNC6(qframe) == 0, ("qframe busy"));
	FUNC5(FUNC6(qframe), paddr | X86_PG_RW | X86_PG_V | X86_PG_A |
	    X86_PG_M | FUNC4(kernel_pmap, m->md.pat_mode, 0));
	return (qframe);
}