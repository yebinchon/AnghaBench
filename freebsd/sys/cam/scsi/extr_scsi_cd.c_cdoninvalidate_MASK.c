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
struct cd_softc {int /*<<< orphan*/  disk; int /*<<< orphan*/  bio_queue; int /*<<< orphan*/  flags; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD_FLAG_INVALID ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdasync ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct cam_periph *periph)
{
	struct cd_softc *softc;

	softc = (struct cd_softc *)periph->softc;

	/*
	 * De-register any async callbacks.
	 */
	FUNC2(0, cdasync, periph, periph->path);

	softc->flags |= CD_FLAG_INVALID;

	/*
	 * Return all queued I/O with ENXIO.
	 * XXX Handle any transactions queued to the card
	 *     with XPT_ABORT_CCB.
	 */
	FUNC0(&softc->bio_queue, NULL, ENXIO);

	FUNC1(softc->disk);
}