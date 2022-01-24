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
struct ch_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_FLAG_INVALID ; 
 int /*<<< orphan*/  chasync ; 
 int /*<<< orphan*/  chdevgonecb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct cam_periph *periph)
{
	struct ch_softc *softc;

	softc = (struct ch_softc *)periph->softc;

	/*
	 * De-register any async callbacks.
	 */
	FUNC1(0, chasync, periph, periph->path);

	softc->flags |= CH_FLAG_INVALID;

	/*
	 * Tell devfs this device has gone away, and ask for a callback
	 * when it has cleaned up its state.
	 */
	FUNC0(softc->dev, chdevgonecb, periph);
}