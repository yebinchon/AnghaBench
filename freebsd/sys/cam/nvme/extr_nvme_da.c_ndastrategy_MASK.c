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
struct nda_softc {int /*<<< orphan*/  cam_iosched; int /*<<< orphan*/  deletes; } ;
struct cam_periph {int flags; int /*<<< orphan*/  path; scalar_t__ softc; } ;
struct bio {scalar_t__ bio_cmd; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;

/* Variables and functions */
 scalar_t__ BIO_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int CAM_PERIPH_INVALID ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 

__attribute__((used)) static void
FUNC6(struct bio *bp)
{
	struct cam_periph *periph;
	struct nda_softc *softc;
	
	periph = (struct cam_periph *)bp->bio_disk->d_drv1;
	softc = (struct nda_softc *)periph->softc;

	FUNC3(periph);

	FUNC0(periph->path, CAM_DEBUG_TRACE, ("ndastrategy(%p)\n", bp));

	/*
	 * If the device has been made invalid, error out
	 */
	if ((periph->flags & CAM_PERIPH_INVALID) != 0) {
		FUNC4(periph);
		FUNC1(bp, NULL, ENXIO);
		return;
	}
	
	if (bp->bio_cmd == BIO_DELETE)
		softc->deletes++;

	/*
	 * Place it in the queue of disk activities for this disk
	 */
	FUNC2(softc->cam_iosched, bp);

	/*
	 * Schedule ourselves for performing the work.
	 */
	FUNC5(periph);
	FUNC4(periph);

	return;
}