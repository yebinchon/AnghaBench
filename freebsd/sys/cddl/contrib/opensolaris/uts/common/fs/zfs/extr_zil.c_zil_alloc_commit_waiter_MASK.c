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
struct TYPE_4__ {scalar_t__ zcw_zio_error; int /*<<< orphan*/  zcw_done; int /*<<< orphan*/ * zcw_lwb; int /*<<< orphan*/  zcw_node; int /*<<< orphan*/  zcw_lock; int /*<<< orphan*/  zcw_cv; } ;
typedef  TYPE_1__ zil_commit_waiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zil_zcw_cache ; 

__attribute__((used)) static zil_commit_waiter_t *
FUNC4()
{
	zil_commit_waiter_t *zcw = FUNC1(zil_zcw_cache, KM_SLEEP);

	FUNC0(&zcw->zcw_cv, NULL, CV_DEFAULT, NULL);
	FUNC3(&zcw->zcw_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC2(&zcw->zcw_node);
	zcw->zcw_lwb = NULL;
	zcw->zcw_done = B_FALSE;
	zcw->zcw_zio_error = 0;

	return (zcw);
}