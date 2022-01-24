#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_map_t ;
struct vm_area_struct {int dummy; } ;
struct task_struct {TYPE_3__* task_thread; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct TYPE_6__ {TYPE_2__* td_proc; } ;
struct TYPE_5__ {TYPE_1__* p_vmspace; } ;
struct TYPE_4__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int FOLL_WRITE ; 
 long FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,int,struct page**) ; 

long
FUNC1(struct task_struct *task, struct mm_struct *mm,
    unsigned long start, unsigned long nr_pages, int gup_flags,
    struct page **pages, struct vm_area_struct **vmas)
{
	vm_map_t map;

	map = &task->task_thread->td_proc->p_vmspace->vm_map;
	return (FUNC0(map, start, nr_pages,
	    !!(gup_flags & FOLL_WRITE), pages));
}