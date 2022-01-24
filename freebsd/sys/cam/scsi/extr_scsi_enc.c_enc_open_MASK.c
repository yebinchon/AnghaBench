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
struct enc_softc {int enc_flags; int /*<<< orphan*/  open_count; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int ENC_FLAG_INITIALIZED ; 
 int ENC_FLAG_INVALID ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct cam_periph *periph;
	struct enc_softc *softc;
	int error = 0;

	periph = (struct cam_periph *)dev->si_drv1;
	if (FUNC0(periph) != 0)
		return (ENXIO);

	FUNC1(periph);

	softc = (struct enc_softc *)periph->softc;

	if ((softc->enc_flags & ENC_FLAG_INITIALIZED) == 0) {
		error = ENXIO;
		goto out;
	}
	if (softc->enc_flags & ENC_FLAG_INVALID) {
		error = ENXIO;
		goto out;
	}
out:
	if (error != 0)
		FUNC2(periph);
	else
		softc->open_count++;

	FUNC3(periph);

	return (error);
}