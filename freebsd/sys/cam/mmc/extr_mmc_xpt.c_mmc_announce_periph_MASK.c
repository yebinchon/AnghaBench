#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct TYPE_5__ {int clock; } ;
struct TYPE_6__ {TYPE_1__ ios; } ;
struct TYPE_7__ {TYPE_2__ mmc; } ;
struct TYPE_8__ {int status; int /*<<< orphan*/  func_code; } ;
struct ccb_trans_settings {TYPE_3__ proto_specific; TYPE_4__ ccb_h; int /*<<< orphan*/  type; } ;
struct ccb_pathinq {int dummy; } ;
struct cam_periph {struct cam_path* path; } ;
struct cam_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_INFO ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  CTS_TYPE_CURRENT_SETTINGS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  XPT_GET_TRAN_SETTINGS ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccb_pathinq*,struct cam_path*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct cam_path*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct cam_periph *periph)
{
	struct	ccb_pathinq cpi;
	struct	ccb_trans_settings cts;
	struct	cam_path *path = periph->path;

	FUNC1(periph, MA_OWNED);

	FUNC0(periph->path, CAM_DEBUG_INFO,
		  ("mmc_announce_periph: called\n"));

	FUNC5(&cts.ccb_h, path, CAM_PRIORITY_NORMAL);
	cts.ccb_h.func_code = XPT_GET_TRAN_SETTINGS;
	cts.type = CTS_TYPE_CURRENT_SETTINGS;
	FUNC3((union ccb*)&cts);
	if ((cts.ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP)
		return;
	FUNC4(&cpi, periph->path);
	FUNC2("XPT info: CLK %04X, ...\n", cts.proto_specific.mmc.ios.clock);
}