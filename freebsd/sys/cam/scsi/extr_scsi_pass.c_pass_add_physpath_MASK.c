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
struct pass_softc {int flags; int /*<<< orphan*/  alias_dev; int /*<<< orphan*/  dev; } ;
struct mtx {int dummy; } ;
struct cam_periph {int flags; int /*<<< orphan*/  path; struct pass_softc* softc; } ;

/* Variables and functions */
 int CAM_PERIPH_INVALID ; 
 int /*<<< orphan*/  MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PASS_FLAG_INITIAL_PHYSPATH ; 
 struct mtx* FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtx*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *context, int pending)
{
	struct cam_periph *periph;
	struct pass_softc *softc;
	struct mtx *mtx;
	char *physpath;

	/*
	 * If we have one, create a devfs alias for our
	 * physical path.
	 */
	periph = context;
	softc = periph->softc;
	physpath = FUNC4(MAXPATHLEN, M_DEVBUF, M_WAITOK);
	mtx = FUNC0(periph);
	FUNC5(mtx);

	if (periph->flags & CAM_PERIPH_INVALID)
		goto out;

	if (FUNC8(physpath, MAXPATHLEN,
			"GEOM::physpath", periph->path) == 0
	 && FUNC7(physpath) != 0) {

		FUNC6(mtx);
		FUNC3(MAKEDEV_WAITOK, &softc->alias_dev,
					softc->dev, softc->alias_dev, physpath);
		FUNC5(mtx);
	}

out:
	/*
	 * Now that we've made our alias, we no longer have to have a
	 * reference to the device.
	 */
	if ((softc->flags & PASS_FLAG_INITIAL_PHYSPATH) == 0)
		softc->flags |= PASS_FLAG_INITIAL_PHYSPATH;

	/*
	 * We always acquire a reference to the periph before queueing this
	 * task queue function, so it won't go away before we run.
	 */
	while (pending-- > 0)
		FUNC1(periph);
	FUNC6(mtx);

	FUNC2(physpath, M_DEVBUF);
}