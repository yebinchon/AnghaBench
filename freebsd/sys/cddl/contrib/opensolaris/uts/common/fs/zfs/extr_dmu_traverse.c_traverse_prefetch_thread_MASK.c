#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
struct TYPE_5__ {TYPE_1__* td_pfd; int /*<<< orphan*/  td_rootbp; int /*<<< orphan*/  td_objset; int /*<<< orphan*/ * td_resume; TYPE_1__* td_arg; int /*<<< orphan*/  td_func; } ;
typedef  TYPE_2__ traverse_data_t ;
struct TYPE_4__ {int /*<<< orphan*/  pd_mtx; int /*<<< orphan*/  pd_cv; int /*<<< orphan*/  pd_exited; int /*<<< orphan*/  pd_resume; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZB_ROOT_BLKID ; 
 int /*<<< orphan*/  ZB_ROOT_LEVEL ; 
 int /*<<< orphan*/  ZB_ROOT_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  traverse_prefetcher ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	traverse_data_t *td_main = arg;
	traverse_data_t td = *td_main;
	zbookmark_phys_t czb;

	td.td_func = traverse_prefetcher;
	td.td_arg = td_main->td_pfd;
	td.td_pfd = NULL;
	td.td_resume = &td_main->td_pfd->pd_resume;

	FUNC0(&czb, td.td_objset,
	    ZB_ROOT_OBJECT, ZB_ROOT_LEVEL, ZB_ROOT_BLKID);
	(void) FUNC4(&td, NULL, td.td_rootbp, &czb);

	FUNC2(&td_main->td_pfd->pd_mtx);
	td_main->td_pfd->pd_exited = B_TRUE;
	FUNC1(&td_main->td_pfd->pd_cv);
	FUNC3(&td_main->td_pfd->pd_mtx);
}