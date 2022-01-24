#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  size_t u_int ;
struct scsi_report_luns_data {TYPE_2__* luns; int /*<<< orphan*/  length; } ;
struct cam_path {TYPE_1__* target; } ;
typedef  int probe_flags ;
typedef  scalar_t__ lun_id_t ;
struct TYPE_4__ {int /*<<< orphan*/ * lundata; } ;
struct TYPE_3__ {int /*<<< orphan*/  luns_mtx; struct scsi_report_luns_data* luns; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_report_luns_data*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_report_luns_data*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_report_luns_data*,size_t,scalar_t__) ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int PROBE_EXTLUN ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_report_luns_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC12 (struct cam_path*) ; 

__attribute__((used)) static void
FUNC13(struct cam_path *path, struct scsi_report_luns_data *new,
    probe_flags flags)
{
	struct cam_path *tp;
	struct scsi_report_luns_data *old;
	u_int idx1, idx2, nlun_old, nlun_new;
	lun_id_t this_lun;
	u_int8_t *ol, *nl;

	if (path->target == NULL) {
		return;
	}
	FUNC5(&path->target->luns_mtx);
	old = path->target->luns;
	path->target->luns = new;
	FUNC6(&path->target->luns_mtx);
	if (old == NULL)
		return;
	nlun_old = FUNC7(old->length) / 8;
	nlun_new = FUNC7(new->length) / 8;

	/*
	 * We are not going to assume sorted lists. Deal.
	 */
	for (idx1 = 0; idx1 < nlun_old; idx1++) {
		ol = old->luns[idx1].lundata;
		for (idx2 = 0; idx2 < nlun_new; idx2++) {
			nl = new->luns[idx2].lundata;
			if (FUNC4(nl, ol, 8) == 0) {
				break;
			}
		}
		if (idx2 < nlun_new) {
			continue;
		}
		/*
		 * An 'old' item not in the 'new' list.
		 * Nuke it. Except that if it is lun 0,
		 * that would be what the probe state
		 * machine is currently working on,
		 * so we won't do that.
		 */
		FUNC1(old, idx1, this_lun);
		if (this_lun == 0) {
			continue;
		}

		/*
		 * We also cannot nuke it if it is
		 * not in a lun format we understand
		 * and replace the LUN with a "simple" LUN
		 * if that is all the HBA supports.
		 */
		if (!(flags & PROBE_EXTLUN)) {
			if (!FUNC0(old, idx1))
				continue;
			FUNC2(old, idx1, this_lun);
		}

		if (FUNC9(&tp, NULL, FUNC11(path),
		    FUNC12(path), this_lun) == CAM_REQ_CMP) {
			FUNC8(AC_LOST_DEVICE, tp, NULL);
			FUNC10(tp);
		}
	}
	FUNC3(old, M_CAMXPT);
}