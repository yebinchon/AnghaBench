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
struct TYPE_5__ {int /*<<< orphan*/  ua_type; scalar_t__ ua_set; scalar_t__ ua_all; int /*<<< orphan*/  ua_info; } ;
struct TYPE_6__ {size_t targ_mapped_lun; } ;
struct TYPE_4__ {TYPE_3__ nexus; } ;
union ctl_ha_msg {TYPE_2__ ua; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ctl_softc {int /*<<< orphan*/  ctl_lock; struct ctl_lun** ctl_luns; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; int /*<<< orphan*/  ua_tpt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_UA_THIN_PROV_THRES ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 size_t ctl_max_luns ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct ctl_softc *softc, union ctl_ha_msg *msg, int len)
{
	struct ctl_lun *lun;
	uint32_t iid = FUNC4(&msg->hdr.nexus);

	FUNC6(&softc->ctl_lock);
	if (msg->hdr.nexus.targ_mapped_lun >= ctl_max_luns ||
	    (lun = softc->ctl_luns[msg->hdr.nexus.targ_mapped_lun]) == NULL) {
		FUNC7(&softc->ctl_lock);
		return;
	}
	FUNC6(&lun->lun_lock);
	FUNC7(&softc->ctl_lock);
	if (msg->ua.ua_type == CTL_UA_THIN_PROV_THRES && msg->ua.ua_set)
		FUNC5(lun->ua_tpt_info, msg->ua.ua_info, 8);
	if (msg->ua.ua_all) {
		if (msg->ua.ua_set)
			FUNC3(lun, iid, msg->ua.ua_type);
		else
			FUNC1(lun, iid, msg->ua.ua_type);
	} else {
		if (msg->ua.ua_set)
			FUNC2(lun, iid, msg->ua.ua_type);
		else
			FUNC0(lun, iid, msg->ua.ua_type);
	}
	FUNC7(&lun->lun_lock);
}