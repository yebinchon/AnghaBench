#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ drr_magic; int /*<<< orphan*/  drr_versioninfo; } ;
struct TYPE_13__ {TYPE_2__ drr_begin; } ;
struct TYPE_15__ {TYPE_1__ drr_u; } ;
typedef  TYPE_3__ dmu_replay_record_t ;
struct TYPE_16__ {char* drc_tosnap; char* drc_tofs; TYPE_2__* drc_drrb; int /*<<< orphan*/  drc_cksum; int /*<<< orphan*/  drc_byteswap; int /*<<< orphan*/  drc_clone; void* drc_cred; void* drc_resumable; void* drc_force; TYPE_3__* drc_drr_begin; } ;
typedef  TYPE_4__ dmu_recv_cookie_t ;
struct TYPE_17__ {char* drba_origin; void* drba_cred; TYPE_4__* drba_cookie; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ dmu_recv_begin_arg_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  B_TRUE ; 
 void* FUNC1 () ; 
 int DMU_BACKUP_FEATURE_RESUMING ; 
 scalar_t__ DMU_BACKUP_MAGIC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  dmu_recv_begin_check ; 
 int /*<<< orphan*/  dmu_recv_begin_sync ; 
 int /*<<< orphan*/  dmu_recv_resume_begin_check ; 
 int /*<<< orphan*/  dmu_recv_resume_begin_sync ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 

int
FUNC9(char *tofs, char *tosnap, dmu_replay_record_t *drr_begin,
    boolean_t force, boolean_t resumable, char *origin, dmu_recv_cookie_t *drc)
{
	dmu_recv_begin_arg_t drba = { 0 };

	FUNC5(drc, sizeof (dmu_recv_cookie_t));
	drc->drc_drr_begin = drr_begin;
	drc->drc_drrb = &drr_begin->drr_u.drr_begin;
	drc->drc_tosnap = tosnap;
	drc->drc_tofs = tofs;
	drc->drc_force = force;
	drc->drc_resumable = resumable;
	drc->drc_cred = FUNC1();
	drc->drc_clone = (origin != NULL);

	if (drc->drc_drrb->drr_magic == FUNC0(DMU_BACKUP_MAGIC)) {
		drc->drc_byteswap = B_TRUE;
		(void) FUNC7(drr_begin,
		    sizeof (dmu_replay_record_t), &drc->drc_cksum);
		FUNC4(drr_begin);
	} else if (drc->drc_drrb->drr_magic == DMU_BACKUP_MAGIC) {
		(void) FUNC8(drr_begin,
		    sizeof (dmu_replay_record_t), &drc->drc_cksum);
	} else {
		return (FUNC3(EINVAL));
	}

	drba.drba_origin = origin;
	drba.drba_cookie = drc;
	drba.drba_cred = FUNC1();

	if (FUNC2(drc->drc_drrb->drr_versioninfo) &
	    DMU_BACKUP_FEATURE_RESUMING) {
		return (FUNC6(tofs,
		    dmu_recv_resume_begin_check, dmu_recv_resume_begin_sync,
		    &drba, 5, ZFS_SPACE_CHECK_NORMAL));
	} else  {
		return (FUNC6(tofs,
		    dmu_recv_begin_check, dmu_recv_begin_sync,
		    &drba, 5, ZFS_SPACE_CHECK_NORMAL));
	}
}