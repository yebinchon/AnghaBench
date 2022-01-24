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
struct nda_softc {int flags; int /*<<< orphan*/  disk; int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  sysctl_stats_ctx; int /*<<< orphan*/  cam_iosched; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int NDA_FLAG_SCTX_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nda_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(struct cam_periph *periph)
{
	struct nda_softc *softc;

	softc = (struct nda_softc *)periph->softc;

	FUNC2(periph);

	FUNC0(softc->cam_iosched);

	/*
	 * If we can't free the sysctl tree, oh well...
	 */
	if ((softc->flags & NDA_FLAG_SCTX_INIT) != 0) {
#ifdef CAM_IO_STATS
		if (sysctl_ctx_free(&softc->sysctl_stats_ctx) != 0)
			xpt_print(periph->path,
			    "can't remove sysctl stats context\n");
#endif
		if (FUNC5(&softc->sysctl_ctx) != 0)
			FUNC6(periph->path,
			    "can't remove sysctl context\n");
	}

	FUNC3(softc->disk);
	FUNC4(softc, M_DEVBUF);
	FUNC1(periph);
}