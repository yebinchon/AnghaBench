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
struct pt_softc {int /*<<< orphan*/  bio_queue; int /*<<< orphan*/  flags; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  PT_FLAG_DEVICE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptasync ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct cam_periph *periph)
{
	struct pt_softc *softc;

	softc = (struct pt_softc *)periph->softc;

	/*
	 * De-register any async callbacks.
	 */
	FUNC1(0, ptasync, periph, periph->path);

	softc->flags |= PT_FLAG_DEVICE_INVALID;

	/*
	 * Return all queued I/O with ENXIO.
	 * XXX Handle any transactions queued to the card
	 *     with XPT_ABORT_CCB.
	 */
	FUNC0(&softc->bio_queue, NULL, ENXIO);
}