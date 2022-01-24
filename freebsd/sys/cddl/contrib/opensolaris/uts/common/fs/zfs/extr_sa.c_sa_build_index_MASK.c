#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  sa_lock; } ;
typedef  TYPE_1__ sa_os_t ;
typedef  int /*<<< orphan*/  sa_idx_tab_t ;
struct TYPE_12__ {scalar_t__ sa_magic; } ;
typedef  TYPE_2__ sa_hdr_phys_t ;
struct TYPE_13__ {int /*<<< orphan*/ * sa_spill_tab; int /*<<< orphan*/ * sa_bonus_tab; TYPE_4__* sa_os; } ;
typedef  TYPE_3__ sa_handle_t ;
typedef  scalar_t__ sa_buf_type_t ;
typedef  int /*<<< orphan*/  dmu_object_type_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;
struct TYPE_14__ {TYPE_1__* os_sa; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SA_BONUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,scalar_t__) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ SA_MAGIC ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC10(sa_handle_t *hdl, sa_buf_type_t buftype)
{
	sa_hdr_phys_t *sa_hdr_phys;
	dmu_buf_impl_t *db = FUNC3(hdl, buftype);
	dmu_object_type_t bonustype = FUNC2(db);
	sa_os_t *sa = hdl->sa_os->os_sa;
	sa_idx_tab_t *idx_tab;

	sa_hdr_phys = FUNC4(hdl, buftype);

	FUNC6(&sa->sa_lock);

	/* Do we need to byteswap? */

	/* only check if not old znode */
	if (FUNC1(bonustype) && sa_hdr_phys->sa_magic != SA_MAGIC &&
	    sa_hdr_phys->sa_magic != 0) {
		FUNC5(FUNC0(sa_hdr_phys->sa_magic) == SA_MAGIC);
		FUNC8(hdl, buftype);
	}

	idx_tab = FUNC9(hdl->sa_os, bonustype, sa_hdr_phys);

	if (buftype == SA_BONUS)
		hdl->sa_bonus_tab = idx_tab;
	else
		hdl->sa_spill_tab = idx_tab;

	FUNC7(&sa->sa_lock);
	return (0);
}