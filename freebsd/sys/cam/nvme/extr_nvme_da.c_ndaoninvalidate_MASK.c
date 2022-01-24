#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nda_softc {int /*<<< orphan*/  disk; int /*<<< orphan*/  cam_iosched; int /*<<< orphan*/  invalidations; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ndaasync ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct cam_periph *periph)
{
	struct nda_softc *softc;

	softc = (struct nda_softc *)periph->softc;

	/*
	 * De-register any async callbacks.
	 */
	FUNC2(0, ndaasync, periph, periph->path);
#ifdef CAM_IO_STATS
	softc->invalidations++;
#endif

	/*
	 * Return all queued I/O with ENXIO.
	 * XXX Handle any transactions queued to the card
	 *     with XPT_ABORT_CCB.
	 */
	FUNC0(softc->cam_iosched, NULL, ENXIO);

	FUNC1(softc->disk);
}