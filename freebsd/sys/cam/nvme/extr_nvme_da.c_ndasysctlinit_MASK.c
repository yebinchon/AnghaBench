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
typedef  int /*<<< orphan*/  tmpstr2 ;
typedef  int /*<<< orphan*/  tmpstr ;
struct nda_softc {int /*<<< orphan*/ * sysctl_tree; int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  cam_iosched; int /*<<< orphan*/  invalidations; int /*<<< orphan*/ * sysctl_stats_tree; int /*<<< orphan*/  sysctl_stats_ctx; int /*<<< orphan*/  errors; int /*<<< orphan*/  timeouts; int /*<<< orphan*/  trim_lbas; int /*<<< orphan*/  trim_ranges; int /*<<< orphan*/  trim_count; int /*<<< orphan*/  deletes; int /*<<< orphan*/  unmappedio; int /*<<< orphan*/  flags; } ;
struct cam_periph {int flags; int unit_number; scalar_t__ softc; } ;

/* Variables and functions */
 int CAM_PERIPH_INVALID ; 
 int CTLFLAG_MPSAFE ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_U64 ; 
 int /*<<< orphan*/  NDA_FLAG_SCTX_INIT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct cam_periph*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _kern_cam_nda ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cam_periph_invalidate_sysctl ; 
 int /*<<< orphan*/  FUNC9 (struct cam_periph*) ; 
 int /*<<< orphan*/  nda_rotating_media ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(void *context, int pending)
{
	struct cam_periph *periph;
	struct nda_softc *softc;
	char tmpstr[32], tmpstr2[16];

	periph = (struct cam_periph *)context;

	/* periph was held for us when this task was enqueued */
	if ((periph->flags & CAM_PERIPH_INVALID) != 0) {
		FUNC9(periph);
		return;
	}

	softc = (struct nda_softc *)periph->softc;
	FUNC11(tmpstr, sizeof(tmpstr), "CAM NDA unit %d", periph->unit_number);
	FUNC11(tmpstr2, sizeof(tmpstr2), "%d", periph->unit_number);

	FUNC12(&softc->sysctl_ctx);
	softc->flags |= NDA_FLAG_SCTX_INIT;
	softc->sysctl_tree = FUNC2(&softc->sysctl_ctx,
		FUNC7(_kern_cam_nda), OID_AUTO, tmpstr2,
		CTLFLAG_RD, 0, tmpstr, "device_index");
	if (softc->sysctl_tree == NULL) {
		FUNC10("ndasysctlinit: unable to allocate sysctl tree\n");
		FUNC9(periph);
		return;
	}

	FUNC0(&softc->sysctl_ctx, FUNC6(softc->sysctl_tree),
	    OID_AUTO, "unmapped_io", CTLFLAG_RD,
	    &softc->unmappedio, 0, "Unmapped I/O leaf");

	FUNC4(&softc->sysctl_ctx, FUNC6(softc->sysctl_tree),
	    OID_AUTO, "deletes", CTLFLAG_RD,
	    &softc->deletes, "Number of BIO_DELETE requests");

	FUNC5(&softc->sysctl_ctx,
		FUNC6(softc->sysctl_tree), OID_AUTO,
		"trim_count", CTLFLAG_RD, &softc->trim_count,
		"Total number of unmap/dsm commands sent");
	FUNC5(&softc->sysctl_ctx,
		FUNC6(softc->sysctl_tree), OID_AUTO,
		"trim_ranges", CTLFLAG_RD, &softc->trim_ranges,
		"Total number of ranges in unmap/dsm commands");
	FUNC5(&softc->sysctl_ctx,
		FUNC6(softc->sysctl_tree), OID_AUTO,
		"trim_lbas", CTLFLAG_RD, &softc->trim_lbas,
		"Total lbas in the unmap/dsm commands sent");

	FUNC0(&softc->sysctl_ctx, FUNC6(softc->sysctl_tree),
	    OID_AUTO, "rotating", CTLFLAG_RD, &nda_rotating_media, 1,
	    "Rotating media");

#ifdef CAM_IO_STATS
	softc->sysctl_stats_tree = SYSCTL_ADD_NODE(&softc->sysctl_stats_ctx,
		SYSCTL_CHILDREN(softc->sysctl_tree), OID_AUTO, "stats",
		CTLFLAG_RD, 0, "Statistics");
	if (softc->sysctl_stats_tree == NULL) {
		printf("ndasysctlinit: unable to allocate sysctl tree for stats\n");
		cam_periph_release(periph);
		return;
	}
	SYSCTL_ADD_INT(&softc->sysctl_stats_ctx,
		SYSCTL_CHILDREN(softc->sysctl_stats_tree),
		OID_AUTO, "timeouts", CTLFLAG_RD,
		&softc->timeouts, 0,
		"Device timeouts reported by the SIM");
	SYSCTL_ADD_INT(&softc->sysctl_stats_ctx,
		SYSCTL_CHILDREN(softc->sysctl_stats_tree),
		OID_AUTO, "errors", CTLFLAG_RD,
		&softc->errors, 0,
		"Transport errors reported by the SIM.");
	SYSCTL_ADD_INT(&softc->sysctl_stats_ctx,
		SYSCTL_CHILDREN(softc->sysctl_stats_tree),
		OID_AUTO, "pack_invalidations", CTLFLAG_RD,
		&softc->invalidations, 0,
		"Device pack invalidations.");
#endif

#ifdef CAM_TEST_FAILURE
	SYSCTL_ADD_PROC(&softc->sysctl_ctx, SYSCTL_CHILDREN(softc->sysctl_tree),
		OID_AUTO, "invalidate", CTLTYPE_U64 | CTLFLAG_RW | CTLFLAG_MPSAFE,
		periph, 0, cam_periph_invalidate_sysctl, "I",
		"Write 1 to invalidate the drive immediately");
#endif

	FUNC8(softc->cam_iosched, &softc->sysctl_ctx,
	    softc->sysctl_tree);

	FUNC9(periph);
}