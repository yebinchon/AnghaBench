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
struct vm_guest_paging {int /*<<< orphan*/  paging_mode; int /*<<< orphan*/  cpu_mode; int /*<<< orphan*/  cpl; int /*<<< orphan*/  cr3; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct vm_guest_paging *paging)
{
	paging->cr3 = FUNC0();
	paging->cpl = FUNC1();
	paging->cpu_mode = FUNC2();
	paging->paging_mode = FUNC3();
}