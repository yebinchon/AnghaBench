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
struct TYPE_4__ {struct bio* ccb_bp; int /*<<< orphan*/  ccb_state; } ;
union ccb {TYPE_2__ ccb_h; int /*<<< orphan*/  csio; } ;
struct pt_softc {int /*<<< orphan*/  bio_queue; int /*<<< orphan*/  pending_ccbs; int /*<<< orphan*/  io_timeout; int /*<<< orphan*/  device_stats; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;
struct bio {scalar_t__ bio_cmd; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_bcount; } ;
struct TYPE_3__ {int /*<<< orphan*/  le; } ;

/* Variables and functions */
 scalar_t__ BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  PT_CCB_BUFFER_IO_UA ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bio*) ; 
 TYPE_1__ periph_links ; 
 int /*<<< orphan*/  ptdone ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct cam_periph *periph, union ccb *start_ccb)
{
	struct pt_softc *softc;
	struct bio *bp;

	softc = (struct pt_softc *)periph->softc;

	FUNC0(periph->path, CAM_DEBUG_TRACE, ("ptstart\n"));

	/*
	 * See if there is a buf with work for us to do..
	 */
	bp = FUNC2(&softc->bio_queue);
	if (bp == NULL) {
		FUNC7(start_ccb);
	} else {
		FUNC3(&softc->bio_queue, bp);

		FUNC4(softc->device_stats, bp);

		FUNC5(&start_ccb->csio,
				  /*retries*/4,
				  ptdone,
				  MSG_SIMPLE_Q_TAG,
				  bp->bio_cmd == BIO_READ,
				  /*byte2*/0,
				  bp->bio_bcount,
				  bp->bio_data,
				  /*sense_len*/SSD_FULL_SIZE,
				  /*timeout*/softc->io_timeout);

		start_ccb->ccb_h.ccb_state = PT_CCB_BUFFER_IO_UA;

		/*
		 * Block out any asynchronous callbacks
		 * while we touch the pending ccb list.
		 */
		FUNC1(&softc->pending_ccbs, &start_ccb->ccb_h,
				 periph_links.le);

		start_ccb->ccb_h.ccb_bp = bp;
		bp = FUNC2(&softc->bio_queue);

		FUNC6(start_ccb);
		
		if (bp != NULL) {
			/* Have more work to do, so ensure we stay scheduled */
			FUNC8(periph, CAM_PRIORITY_NORMAL);
		}
	}
}