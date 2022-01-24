#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int func_code; TYPE_3__* path; } ;
union ccb {TYPE_1__ crcn; TYPE_2__ ccb_h; int /*<<< orphan*/  cts; } ;
struct TYPE_7__ {int /*<<< orphan*/  periph; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  XPT_DEV_ADVINFO 132 
#define  XPT_SCAN_BUS 131 
#define  XPT_SCAN_LUN 130 
#define  XPT_SCAN_TGT 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int /*<<< orphan*/  FUNC0 (union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 

__attribute__((used)) static void
FUNC5(union ccb *start_ccb)
{

	switch (start_ccb->ccb_h.func_code) {
	case XPT_SET_TRAN_SETTINGS:
	{
		FUNC3(&start_ccb->cts,
					   start_ccb->ccb_h.path,
					   /*async_update*/FALSE);
		break;
	}
	case XPT_SCAN_BUS:
	case XPT_SCAN_TGT:
		FUNC1(start_ccb->ccb_h.path->periph, start_ccb);
		break;
	case XPT_SCAN_LUN:
		FUNC2(start_ccb->ccb_h.path->periph,
			      start_ccb->ccb_h.path, start_ccb->crcn.flags,
			      start_ccb);
		break;
	case XPT_DEV_ADVINFO:
	{
		FUNC0(start_ccb);
		break;
	}
	default:
		FUNC4(start_ccb);
		break;
	}
}