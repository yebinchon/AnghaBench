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
struct mtx {int dummy; } ;
struct enc_softc {int open_count; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 struct mtx* FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct cam_periph *periph;
	struct enc_softc  *enc;
	struct mtx *mtx;
	int i;

	periph = (struct cam_periph *)arg;
	mtx = FUNC0(periph);
	FUNC2(mtx);
	enc = (struct enc_softc *)periph->softc;

	/*
	 * When we get this callback, we will get no more close calls from
	 * devfs.  So if we have any dangling opens, we need to release the
	 * reference held for that particular context.
	 */
	for (i = 0; i < enc->open_count; i++)
		FUNC1(periph);

	enc->open_count = 0;

	/*
	 * Release the reference held for the device node, it is gone now.
	 */
	FUNC1(periph);

	/*
	 * We reference the lock directly here, instead of using
	 * cam_periph_unlock().  The reason is that the final call to
	 * cam_periph_release_locked() above could result in the periph
	 * getting freed.  If that is the case, dereferencing the periph
	 * with a cam_periph_unlock() call would cause a page fault.
	 */
	FUNC3(mtx);
}