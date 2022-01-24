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
struct TYPE_4__ {int /*<<< orphan*/  sa_lock; scalar_t__ sa_spill; int /*<<< orphan*/ * sa_bonus; scalar_t__ sa_spill_tab; int /*<<< orphan*/  sa_os; scalar_t__ sa_bonus_tab; int /*<<< orphan*/  sa_dbu; } ;
typedef  TYPE_1__ sa_handle_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sa_cache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC6(sa_handle_t *hdl)
{
	dmu_buf_t *db = hdl->sa_bonus;

	FUNC3(&hdl->sa_lock);
	(void) FUNC1(db, &hdl->sa_dbu);

	if (hdl->sa_bonus_tab)
		FUNC5(hdl->sa_os, hdl->sa_bonus_tab);

	if (hdl->sa_spill_tab)
		FUNC5(hdl->sa_os, hdl->sa_spill_tab);

	FUNC0(hdl->sa_bonus, NULL);

	if (hdl->sa_spill)
		FUNC0((dmu_buf_t *)hdl->sa_spill, NULL);
	FUNC4(&hdl->sa_lock);

	FUNC2(sa_cache, hdl);
}