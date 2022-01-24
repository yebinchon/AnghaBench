#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t targ_mapped_lun; } ;
struct TYPE_9__ {TYPE_5__ nexus; } ;
struct TYPE_6__ {int page_code; scalar_t__ subpage; int /*<<< orphan*/  data; } ;
union ctl_ha_msg {TYPE_4__ hdr; TYPE_1__ mode; } ;
typedef  size_t uint32_t ;
typedef  size_t u_int ;
struct ctl_softc {int /*<<< orphan*/  ctl_lock; struct ctl_lun** ctl_luns; } ;
struct TYPE_8__ {TYPE_2__* index; } ;
struct ctl_lun {int flags; int /*<<< orphan*/  lun_lock; TYPE_3__ mode_pages; } ;
struct TYPE_7__ {int page_code; scalar_t__ subpage; int /*<<< orphan*/  page_len; int /*<<< orphan*/  page_data; } ;

/* Variables and functions */
 int CTL_LUN_DISABLED ; 
 size_t CTL_NUM_MODE_PAGES ; 
 int /*<<< orphan*/  CTL_UA_MODE_CHANGE ; 
 int SMPH_PC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_lun*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_5__*) ; 
 size_t ctl_max_luns ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ctl_softc *softc, union ctl_ha_msg *msg, int len)
{
	struct ctl_lun *lun;
	u_int i;
	uint32_t initidx, targ_lun;

	targ_lun = msg->hdr.nexus.targ_mapped_lun;
	FUNC3(&softc->ctl_lock);
	if (targ_lun >= ctl_max_luns ||
	    (lun = softc->ctl_luns[targ_lun]) == NULL) {
		FUNC4(&softc->ctl_lock);
		return;
	}
	FUNC3(&lun->lun_lock);
	FUNC4(&softc->ctl_lock);
	if (lun->flags & CTL_LUN_DISABLED) {
		FUNC4(&lun->lun_lock);
		return;
	}
	for (i = 0; i < CTL_NUM_MODE_PAGES; i++) {
		if ((lun->mode_pages.index[i].page_code & SMPH_PC_MASK) ==
		    msg->mode.page_code &&
		    lun->mode_pages.index[i].subpage == msg->mode.subpage)
			break;
	}
	if (i == CTL_NUM_MODE_PAGES) {
		FUNC4(&lun->lun_lock);
		return;
	}
	FUNC2(lun->mode_pages.index[i].page_data, msg->mode.data,
	    lun->mode_pages.index[i].page_len);
	initidx = FUNC1(&msg->hdr.nexus);
	if (initidx != -1)
		FUNC0(lun, initidx, CTL_UA_MODE_CHANGE);
	FUNC4(&lun->lun_lock);
}