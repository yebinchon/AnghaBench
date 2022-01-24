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
struct thread {int dummy; } ;
struct mtx {int dummy; } ;
struct enc_softc {int /*<<< orphan*/  open_count; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {struct enc_softc* softc; } ;

/* Variables and functions */
 struct mtx* FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int flag, int fmt, struct thread *td)
{
	struct cam_periph *periph;
	struct enc_softc  *enc;
	struct mtx *mtx;

	periph = (struct cam_periph *)dev->si_drv1;
	mtx = FUNC0(periph);
	FUNC2(mtx);

	enc = periph->softc;
	enc->open_count--;

	FUNC1(periph);

	/*
	 * We reference the lock directly here, instead of using
	 * cam_periph_unlock().  The reason is that the call to
	 * cam_periph_release_locked() above could result in the periph
	 * getting freed.  If that is the case, dereferencing the periph
	 * with a cam_periph_unlock() call would cause a page fault.
	 *
	 * cam_periph_release() avoids this problem using the same method,
	 * but we're manually acquiring and dropping the lock here to
	 * protect the open count and avoid another lock acquisition and
	 * release.
	 */
	FUNC3(mtx);

	return (0);
}