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
struct cd_softc {int flags; int /*<<< orphan*/  disk; int /*<<< orphan*/  mediapoll_c; int /*<<< orphan*/  sysctl_ctx; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int CD_FLAG_SCTX_INIT ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(struct cam_periph *periph)
{
	struct cd_softc *softc;

	softc = (struct cd_softc *)periph->softc;

	FUNC2(periph);
	if ((softc->flags & CD_FLAG_SCTX_INIT) != 0
	    && FUNC5(&softc->sysctl_ctx) != 0) {
		FUNC6(periph->path, "can't remove sysctl context\n");
	}

	FUNC0(&softc->mediapoll_c);
	FUNC3(softc->disk);
	FUNC4(softc, M_DEVBUF);
	FUNC1(periph);
}