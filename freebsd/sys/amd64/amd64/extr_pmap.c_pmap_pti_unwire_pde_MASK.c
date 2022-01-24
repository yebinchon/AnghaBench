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
typedef  TYPE_1__* vm_page_t ;
struct TYPE_4__ {int ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  pti_obj ; 

__attribute__((used)) static void
FUNC5(void *pde, bool only_ref)
{
	vm_page_t m;

	FUNC3(pti_obj);
	m = FUNC2(FUNC0((uintptr_t)pde));
	FUNC1(m->ref_count > 0);
	FUNC1(only_ref || m->ref_count > 1);
	FUNC4(m);
}