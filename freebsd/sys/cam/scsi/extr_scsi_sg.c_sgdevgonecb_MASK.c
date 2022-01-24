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
struct sg_softc {int open_count; } ;
struct mtx {int dummy; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct mtx* FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct cam_periph *periph;
	struct sg_softc *softc;
	struct mtx *mtx;
	int i;

	periph = (struct cam_periph *)arg;
	mtx = FUNC1(periph);
	FUNC3(mtx);

	softc = (struct sg_softc *)periph->softc;
	FUNC0(softc->open_count >= 0, ("Negative open count %d",
		softc->open_count));

	/*
	 * When we get this callback, we will get no more close calls from
	 * devfs.  So if we have any dangling opens, we need to release the
	 * reference held for that particular context.
	 */
	for (i = 0; i < softc->open_count; i++)
		FUNC2(periph);

	softc->open_count = 0;

	/*
	 * Release the reference held for the device node, it is gone now.
	 */
	FUNC2(periph);

	/*
	 * We reference the lock directly here, instead of using
	 * cam_periph_unlock().  The reason is that the final call to
	 * cam_periph_release_locked() above could result in the periph
	 * getting freed.  If that is the case, dereferencing the periph
	 * with a cam_periph_unlock() call would cause a page fault.
	 */
	FUNC4(mtx);
}