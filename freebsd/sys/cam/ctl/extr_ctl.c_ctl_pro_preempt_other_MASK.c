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
struct TYPE_3__ {int residx; scalar_t__ res_type; int /*<<< orphan*/  sa_res_key; } ;
struct TYPE_4__ {TYPE_1__ pr_info; } ;
union ctl_ha_msg {TYPE_2__ pr; } ;
typedef  scalar_t__ uint64_t ;
struct ctl_lun {scalar_t__ pr_res_idx; int pr_key_count; scalar_t__ pr_res_type; int /*<<< orphan*/  pr_generation; } ;

/* Variables and functions */
 int CTL_MAX_INITIATORS ; 
 scalar_t__ CTL_PR_ALL_REGISTRANTS ; 
 scalar_t__ CTL_PR_NO_RESERVATION ; 
 int /*<<< orphan*/  CTL_UA_REG_PREEMPT ; 
 int /*<<< orphan*/  CTL_UA_RES_RELEASE ; 
 scalar_t__ SPR_TYPE_EX_AC_AR ; 
 scalar_t__ SPR_TYPE_EX_AC_RO ; 
 scalar_t__ SPR_TYPE_WR_EX_AR ; 
 scalar_t__ SPR_TYPE_WR_EX_RO ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_lun*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ctl_lun*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ctl_lun *lun, union ctl_ha_msg *msg)
{
	uint64_t sa_res_key;
	int i;

	sa_res_key = FUNC3(msg->pr.pr_info.sa_res_key);

	if (lun->pr_res_idx == CTL_PR_ALL_REGISTRANTS
	 || lun->pr_res_idx == CTL_PR_NO_RESERVATION
	 || sa_res_key != FUNC2(lun, lun->pr_res_idx)) {
		if (sa_res_key == 0) {
			/*
			 * Unregister everybody else and build UA for
			 * them
			 */
			for(i = 0; i < CTL_MAX_INITIATORS; i++) {
				if (i == msg->pr.pr_info.residx ||
				    FUNC2(lun, i) == 0)
					continue;

				FUNC0(lun, i);
				FUNC1(lun, i, CTL_UA_REG_PREEMPT);
			}

			lun->pr_key_count = 1;
			lun->pr_res_type = msg->pr.pr_info.res_type;
			if (lun->pr_res_type != SPR_TYPE_WR_EX_AR &&
			    lun->pr_res_type != SPR_TYPE_EX_AC_AR)
				lun->pr_res_idx = msg->pr.pr_info.residx;
		} else {
		        for (i = 0; i < CTL_MAX_INITIATORS; i++) {
				if (sa_res_key == FUNC2(lun, i))
					continue;

				FUNC0(lun, i);
				lun->pr_key_count--;
				FUNC1(lun, i, CTL_UA_REG_PREEMPT);
			}
		}
	} else {
		for (i = 0; i < CTL_MAX_INITIATORS; i++) {
			if (i == msg->pr.pr_info.residx ||
			    FUNC2(lun, i) == 0)
				continue;

			if (sa_res_key == FUNC2(lun, i)) {
				FUNC0(lun, i);
				lun->pr_key_count--;
				FUNC1(lun, i, CTL_UA_REG_PREEMPT);
			} else if (msg->pr.pr_info.res_type != lun->pr_res_type
			    && (lun->pr_res_type == SPR_TYPE_WR_EX_RO ||
			     lun->pr_res_type == SPR_TYPE_EX_AC_RO)) {
				FUNC1(lun, i, CTL_UA_RES_RELEASE);
			}
		}
		lun->pr_res_type = msg->pr.pr_info.res_type;
		if (lun->pr_res_type != SPR_TYPE_WR_EX_AR &&
		    lun->pr_res_type != SPR_TYPE_EX_AC_AR)
			lun->pr_res_idx = msg->pr.pr_info.residx;
		else
			lun->pr_res_idx = CTL_PR_ALL_REGISTRANTS;
	}
	lun->pr_generation++;

}