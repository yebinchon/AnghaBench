#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pr_msg; } ;
union ctl_io {TYPE_1__ presio; } ;
struct TYPE_9__ {int action; int residx; int /*<<< orphan*/  res_type; int /*<<< orphan*/  sa_res_key; } ;
struct TYPE_10__ {TYPE_3__ pr_info; } ;
struct TYPE_12__ {size_t targ_mapped_lun; } ;
struct TYPE_8__ {TYPE_6__ nexus; } ;
union ctl_ha_msg {TYPE_4__ pr; TYPE_2__ hdr; } ;
typedef  size_t uint32_t ;
struct ctl_softc {int init_min; int init_max; int /*<<< orphan*/  ctl_lock; struct ctl_lun** ctl_luns; } ;
struct TYPE_11__ {int queue_flags; } ;
struct ctl_lun {int flags; int pr_res_idx; int /*<<< orphan*/  lun_lock; int /*<<< orphan*/  pr_generation; int /*<<< orphan*/  pr_key_count; int /*<<< orphan*/  pr_res_type; TYPE_5__ MODE_CTRL; } ;

/* Variables and functions */
 int CTL_LUN_DISABLED ; 
 int CTL_LUN_PR_RESERVED ; 
 int CTL_MAX_INITIATORS ; 
 int CTL_PR_ALL_REGISTRANTS ; 
#define  CTL_PR_CLEAR 133 
 void* CTL_PR_NO_RESERVATION ; 
#define  CTL_PR_PREEMPT 132 
#define  CTL_PR_REG_KEY 131 
#define  CTL_PR_RELEASE 130 
#define  CTL_PR_RESERVE 129 
#define  CTL_PR_UNREG_KEY 128 
 struct ctl_softc* FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  CTL_UA_REG_PREEMPT ; 
 int /*<<< orphan*/  CTL_UA_RES_RELEASE ; 
 int SCP_NUAR ; 
 int /*<<< orphan*/  SPR_TYPE_EX_AC ; 
 int /*<<< orphan*/  SPR_TYPE_EX_AC_RO ; 
 int /*<<< orphan*/  SPR_TYPE_WR_EX ; 
 int /*<<< orphan*/  SPR_TYPE_WR_EX_RO ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_lun*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_lun*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_lun*,int) ; 
 size_t ctl_max_luns ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_lun*,union ctl_ha_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_lun*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(union ctl_io *io)
{
	struct ctl_softc *softc = FUNC0(io);
	union ctl_ha_msg *msg = (union ctl_ha_msg *)&io->presio.pr_msg;
	struct ctl_lun *lun;
	int i;
	uint32_t residx, targ_lun;

	targ_lun = msg->hdr.nexus.targ_mapped_lun;
	FUNC8(&softc->ctl_lock);
	if (targ_lun >= ctl_max_luns ||
	    (lun = softc->ctl_luns[targ_lun]) == NULL) {
		FUNC9(&softc->ctl_lock);
		return;
	}
	FUNC8(&lun->lun_lock);
	FUNC9(&softc->ctl_lock);
	if (lun->flags & CTL_LUN_DISABLED) {
		FUNC9(&lun->lun_lock);
		return;
	}
	residx = FUNC4(&msg->hdr.nexus);
	switch(msg->pr.pr_info.action) {
	case CTL_PR_REG_KEY:
		FUNC1(lun, msg->pr.pr_info.residx);
		if (FUNC5(lun, msg->pr.pr_info.residx) == 0)
			lun->pr_key_count++;
		FUNC7(lun, msg->pr.pr_info.residx,
		    FUNC10(msg->pr.pr_info.sa_res_key));
		lun->pr_generation++;
		break;

	case CTL_PR_UNREG_KEY:
		FUNC2(lun, msg->pr.pr_info.residx);
		lun->pr_key_count--;

		/* XXX Need to see if the reservation has been released */
		/* if so do we need to generate UA? */
		if (msg->pr.pr_info.residx == lun->pr_res_idx) {
			lun->flags &= ~CTL_LUN_PR_RESERVED;
			lun->pr_res_idx = CTL_PR_NO_RESERVATION;

			if ((lun->pr_res_type == SPR_TYPE_WR_EX_RO ||
			     lun->pr_res_type == SPR_TYPE_EX_AC_RO) &&
			    lun->pr_key_count) {
				/*
				 * If the reservation is a registrants
				 * only type we need to generate a UA
				 * for other registered inits.  The
				 * sense code should be RESERVATIONS
				 * RELEASED
				 */

				for (i = softc->init_min; i < softc->init_max; i++) {
					if (FUNC5(lun, i) == 0)
						continue;

					FUNC3(lun, i, CTL_UA_RES_RELEASE);
				}
			}
			lun->pr_res_type = 0;
		} else if (lun->pr_res_idx == CTL_PR_ALL_REGISTRANTS) {
			if (lun->pr_key_count==0) {
				lun->flags &= ~CTL_LUN_PR_RESERVED;
				lun->pr_res_type = 0;
				lun->pr_res_idx = CTL_PR_NO_RESERVATION;
			}
		}
		lun->pr_generation++;
		break;

	case CTL_PR_RESERVE:
		lun->flags |= CTL_LUN_PR_RESERVED;
		lun->pr_res_type = msg->pr.pr_info.res_type;
		lun->pr_res_idx = msg->pr.pr_info.residx;

		break;

	case CTL_PR_RELEASE:
		/*
		 * If this isn't an exclusive access reservation and NUAR
		 * is not set, generate UA for all other registrants.
		 */
		if (lun->pr_res_type != SPR_TYPE_EX_AC &&
		    lun->pr_res_type != SPR_TYPE_WR_EX &&
		    (lun->MODE_CTRL.queue_flags & SCP_NUAR) == 0) {
			for (i = softc->init_min; i < softc->init_max; i++) {
				if (i == residx || FUNC5(lun, i) == 0)
					continue;
				FUNC3(lun, i, CTL_UA_RES_RELEASE);
			}
		}

		lun->flags &= ~CTL_LUN_PR_RESERVED;
		lun->pr_res_idx = CTL_PR_NO_RESERVATION;
		lun->pr_res_type = 0;
		break;

	case CTL_PR_PREEMPT:
		FUNC6(lun, msg);
		break;
	case CTL_PR_CLEAR:
		lun->flags &= ~CTL_LUN_PR_RESERVED;
		lun->pr_res_type = 0;
		lun->pr_key_count = 0;
		lun->pr_res_idx = CTL_PR_NO_RESERVATION;

		for (i=0; i < CTL_MAX_INITIATORS; i++) {
			if (FUNC5(lun, i) == 0)
				continue;
			FUNC2(lun, i);
			FUNC3(lun, i, CTL_UA_REG_PREEMPT);
		}
		lun->pr_generation++;
		break;
	}

	FUNC9(&lun->lun_lock);
}