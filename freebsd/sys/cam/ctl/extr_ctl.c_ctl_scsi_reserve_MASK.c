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
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; } ;
struct ctl_lun {int flags; scalar_t__ res_idx; int /*<<< orphan*/  lun_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 int CTL_LUN_PR_RESERVED ; 
 int CTL_LUN_RESERVED ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	uint32_t residx;

	FUNC0(("ctl_reserve\n"));

	residx = FUNC3(&ctsio->io_hdr.nexus);

	/*
	 * XXX KDM right now, we only support LUN reservation.  We don't
	 * support 3rd party reservations, or extent reservations, which
	 * might actually need the parameter list.  If we've gotten this
	 * far, we've got a LUN reservation.  Anything else got kicked out
	 * above.  So, according to SPC, ignore the length.
	 */

	FUNC6(&lun->lun_lock);
	if ((lun->flags & CTL_LUN_RESERVED) && (lun->res_idx != residx)) {
		FUNC4(ctsio);
		goto bailout;
	}

	/* SPC-3 exceptions to SPC-2 RESERVE and RELEASE behavior. */
	if (lun->flags & CTL_LUN_PR_RESERVED) {
		FUNC5(ctsio);
		goto bailout;
	}

	lun->flags |= CTL_LUN_RESERVED;
	lun->res_idx = residx;
	FUNC5(ctsio);

bailout:
	FUNC7(&lun->lun_lock);
	FUNC2((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}