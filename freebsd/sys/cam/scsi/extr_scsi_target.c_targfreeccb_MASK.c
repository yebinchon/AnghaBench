#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int func_code; union ccb* targ_descr; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct targ_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_DEBUG_PERIPH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_TARG ; 
#define  XPT_ACCEPT_TARGET_IO 130 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
#define  XPT_IMMEDIATE_NOTIFY 129 
#define  XPT_IMMED_NOTIFY 128 
 int /*<<< orphan*/  FUNC2 (union ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 

__attribute__((used)) static void
FUNC4(struct targ_softc *softc, union ccb *ccb)
{
	FUNC0(CAM_DEBUG_PERIPH, ("targfreeccb descr %p and\n",
			ccb->ccb_h.targ_descr));
	FUNC2(ccb->ccb_h.targ_descr, M_TARG);

	switch (ccb->ccb_h.func_code) {
	case XPT_ACCEPT_TARGET_IO:
	case XPT_IMMED_NOTIFY:
	case XPT_IMMEDIATE_NOTIFY:
		FUNC0(CAM_DEBUG_PERIPH, ("freeing ccb %p\n", ccb));
		FUNC2(ccb, M_TARG);
		break;
	default:
		/* Send back CCB if we got it from the periph */
		if (FUNC1(ccb)) {
			FUNC0(CAM_DEBUG_PERIPH,
					("returning queued ccb %p\n", ccb));
			FUNC3(ccb);
		} else {
			FUNC0(CAM_DEBUG_PERIPH,
					("freeing ccb %p\n", ccb));
			FUNC2(ccb, M_TARG);
		}
		break;
	}
}