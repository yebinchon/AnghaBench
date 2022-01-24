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
typedef  int /*<<< orphan*/  xpt_opcode ;
struct TYPE_2__ {int /*<<< orphan*/ * targ_descr; int /*<<< orphan*/  cbfcnp; int /*<<< orphan*/  func_code; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct targ_softc {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_PERIPH ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TARG ; 
 int /*<<< orphan*/  FUNC1 (union ccb*,int /*<<< orphan*/ ) ; 
 union ccb* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  targdone ; 
 int /*<<< orphan*/ * FUNC4 (struct targ_softc*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static union ccb *
FUNC6(struct targ_softc *softc, xpt_opcode type, int priority)
{
	union ccb *ccb;
	int ccb_len;

	ccb_len = FUNC3(type);
	ccb = FUNC2(ccb_len, M_TARG, M_NOWAIT);
	FUNC0(softc->path, CAM_DEBUG_PERIPH, ("getccb %p\n", ccb));
	if (ccb == NULL) {
		return (ccb);
	}
	FUNC5(&ccb->ccb_h, softc->path, priority);
	ccb->ccb_h.func_code = type;
	ccb->ccb_h.cbfcnp = targdone;
	ccb->ccb_h.targ_descr = FUNC4(softc);
	if (ccb->ccb_h.targ_descr == NULL) {
		FUNC1 (ccb, M_TARG);
		ccb = NULL;
	}
	return (ccb);
}