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
struct TYPE_6__ {int status; int /*<<< orphan*/  path; scalar_t__ ccb_bp; } ;
struct TYPE_4__ {int ccb_state; } ;
struct ccb_scsiio {int /*<<< orphan*/  resid; TYPE_1__ ccb_h; } ;
union ccb {TYPE_3__ ccb_h; struct ccb_scsiio csio; } ;
struct pt_softc {int /*<<< orphan*/  device_stats; int /*<<< orphan*/  bio_queue; int /*<<< orphan*/  flags; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;
struct bio {int bio_error; int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_resid; int /*<<< orphan*/  bio_bcount; } ;
struct TYPE_5__ {int /*<<< orphan*/  le; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int CAM_DEV_QFRZN ; 
 int CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  EIO ; 
 int ENXIO ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
#define  PT_CCB_BUFFER_IO 129 
#define  PT_CCB_BUFFER_IO_UA 128 
 int PT_CCB_RETRY_UA ; 
 int /*<<< orphan*/  PT_FLAG_DEVICE_INVALID ; 
 int SF_RETRY_UA ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ periph_links ; 
 int FUNC5 (union ccb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

__attribute__((used)) static void
FUNC8(struct cam_periph *periph, union ccb *done_ccb)
{
	struct pt_softc *softc;
	struct ccb_scsiio *csio;

	softc = (struct pt_softc *)periph->softc;

	FUNC0(periph->path, CAM_DEBUG_TRACE, ("ptdone\n"));

	csio = &done_ccb->csio;
	switch (csio->ccb_h.ccb_state) {
	case PT_CCB_BUFFER_IO:
	case PT_CCB_BUFFER_IO_UA:
	{
		struct bio *bp;

		bp = (struct bio *)done_ccb->ccb_h.ccb_bp;
		if ((done_ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
			int error;
			int sf;
			
			if ((csio->ccb_h.ccb_state & PT_CCB_RETRY_UA) != 0)
				sf = SF_RETRY_UA;
			else
				sf = 0;

			error = FUNC5(done_ccb, CAM_RETRY_SELTO, sf);
			if (error == ERESTART) {
				/*
				 * A retry was scheuled, so
				 * just return.
				 */
				return;
			}
			if (error != 0) {
				if (error == ENXIO) {
					/*
					 * Catastrophic error.  Mark our device
					 * as invalid.
					 */
					FUNC6(periph->path,
					    "Invalidating device\n");
					softc->flags |= PT_FLAG_DEVICE_INVALID;
				}

				/*
				 * return all queued I/O with EIO, so that
				 * the client can retry these I/Os in the
				 * proper order should it attempt to recover.
				 */
				FUNC3(&softc->bio_queue, NULL, EIO);
				bp->bio_error = error;
				bp->bio_resid = bp->bio_bcount;
				bp->bio_flags |= BIO_ERROR;
			} else {
				bp->bio_resid = csio->resid;
				bp->bio_error = 0;
				if (bp->bio_resid != 0) {
					/* Short transfer ??? */
					bp->bio_flags |= BIO_ERROR;
				}
			}
			if ((done_ccb->ccb_h.status & CAM_DEV_QFRZN) != 0)
				FUNC4(done_ccb->ccb_h.path,
						 /*relsim_flags*/0,
						 /*reduction*/0,
						 /*timeout*/0,
						 /*getcount_only*/0);
		} else {
			bp->bio_resid = csio->resid;
			if (bp->bio_resid != 0)
				bp->bio_flags |= BIO_ERROR;
		}

		/*
		 * Block out any asynchronous callbacks
		 * while we touch the pending ccb list.
		 */
		FUNC1(&done_ccb->ccb_h, periph_links.le);

		FUNC2(bp, softc->device_stats, 0);
		break;
	}
	}
	FUNC7(done_ccb);
}