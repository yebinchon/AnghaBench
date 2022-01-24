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
struct TYPE_9__ {scalar_t__ status; void* func_code; } ;
struct TYPE_8__ {TYPE_4__ ccb_h; scalar_t__ enable; } ;
struct TYPE_7__ {union ccb* abort_ccb; TYPE_4__ ccb_h; } ;
union ccb {TYPE_3__ cel; TYPE_2__ cab; } ;
struct targbh_softc {int flags; int /*<<< orphan*/  immed_notify_slist; struct ccb_accept_tio* accept_tio_list; } ;
struct targbh_cmd_desc {struct ccb_accept_tio* atio_link; } ;
struct ccb_hdr {int dummy; } ;
struct TYPE_6__ {scalar_t__ ccb_descr; } ;
struct ccb_accept_tio {TYPE_1__ ccb_h; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;
typedef  scalar_t__ cam_status ;
struct TYPE_10__ {int /*<<< orphan*/  sle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 scalar_t__ CAM_REQ_CMP ; 
 struct ccb_hdr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TARGBH_FLAG_LUN_ENABLED ; 
 void* XPT_ABORT ; 
 void* XPT_EN_LUN ; 
 TYPE_5__ periph_links ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cam_status
FUNC5(struct cam_periph *periph)
{
	union ccb ccb;
	struct targbh_softc *softc;
	struct ccb_accept_tio* atio;
	struct ccb_hdr *ccb_h;

	softc = (struct targbh_softc *)periph->softc;
	if ((softc->flags & TARGBH_FLAG_LUN_ENABLED) == 0)
		return CAM_REQ_CMP;

	/* XXX Block for Continue I/O completion */

	/* Kill off all ACCECPT and IMMEDIATE CCBs */
	while ((atio = softc->accept_tio_list) != NULL) {
		
		softc->accept_tio_list =
		    ((struct targbh_cmd_desc*)atio->ccb_h.ccb_descr)->atio_link;
		FUNC4(&ccb.cab.ccb_h, periph->path, CAM_PRIORITY_NORMAL);
		ccb.cab.ccb_h.func_code = XPT_ABORT;
		ccb.cab.abort_ccb = (union ccb *)atio;
		FUNC3(&ccb);
	}

	while ((ccb_h = FUNC0(&softc->immed_notify_slist)) != NULL) {
		FUNC1(&softc->immed_notify_slist, periph_links.sle);
		FUNC4(&ccb.cab.ccb_h, periph->path, CAM_PRIORITY_NORMAL);
		ccb.cab.ccb_h.func_code = XPT_ABORT;
		ccb.cab.abort_ccb = (union ccb *)ccb_h;
		FUNC3(&ccb);
	}

	/*
	 * Dissable this lun.
	 */
	FUNC4(&ccb.cel.ccb_h, periph->path, CAM_PRIORITY_NORMAL);
	ccb.cel.ccb_h.func_code = XPT_EN_LUN;
	ccb.cel.enable = 0;
	FUNC3(&ccb);

	if (ccb.cel.ccb_h.status != CAM_REQ_CMP)
		FUNC2("targbhdislun - Disabling lun on controller failed "
		       "with status 0x%x\n", ccb.cel.ccb_h.status);
	else 
		softc->flags &= ~TARGBH_FLAG_LUN_ENABLED;
	return (ccb.cel.ccb_h.status);
}