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
struct pt_softc {int io_timeout; int /*<<< orphan*/  device_stats; int /*<<< orphan*/  dev; int /*<<< orphan*/  bio_queue; int /*<<< orphan*/  state; int /*<<< orphan*/  pending_ccbs; } ;
struct make_dev_args {int mda_mode; struct cam_periph* mda_si_drv1; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/  mda_unit; int /*<<< orphan*/ * mda_devsw; } ;
struct ccb_pathinq {int /*<<< orphan*/  transport; } ;
struct ccb_getdev {int /*<<< orphan*/  inq_data; } ;
struct cam_periph {int /*<<< orphan*/  path; int /*<<< orphan*/  unit_number; int /*<<< orphan*/  periph_name; struct pt_softc* softc; } ;
typedef  int /*<<< orphan*/  cam_status ;

/* Variables and functions */
 int AC_BUS_RESET ; 
 int AC_LOST_DEVICE ; 
 int AC_SENT_BDR ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  DEVSTAT_NO_BLOCKSIZE ; 
 int /*<<< orphan*/  DEVSTAT_PRIORITY_OTHER ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PT_STATE_NORMAL ; 
 int SCSI_PT_DEFAULT_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct make_dev_args*) ; 
 int FUNC9 (struct make_dev_args*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  pt_cdevsw ; 
 int /*<<< orphan*/  ptasync ; 
 int /*<<< orphan*/  FUNC12 (struct cam_periph*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ccb_pathinq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cam_status
FUNC15(struct cam_periph *periph, void *arg)
{
	struct pt_softc *softc;
	struct ccb_getdev *cgd;
	struct ccb_pathinq cpi;
	struct make_dev_args args;
	int error;

	cgd = (struct ccb_getdev *)arg;
	if (cgd == NULL) {
		FUNC11("ptregister: no getdev CCB, can't register device\n");
		return(CAM_REQ_CMP_ERR);
	}

	softc = (struct pt_softc *)FUNC10(sizeof(*softc),M_DEVBUF,M_NOWAIT);

	if (softc == NULL) {
		FUNC11("daregister: Unable to probe new device. "
		       "Unable to allocate softc\n");				
		return(CAM_REQ_CMP_ERR);
	}

	FUNC4(softc, sizeof(*softc));
	FUNC0(&softc->pending_ccbs);
	softc->state = PT_STATE_NORMAL;
	FUNC3(&softc->bio_queue);

	softc->io_timeout = SCSI_PT_DEFAULT_TIMEOUT * 1000;

	periph->softc = softc;

	FUNC13(&cpi, periph->path);

	FUNC6(periph);

	FUNC8(&args);
	args.mda_devsw = &pt_cdevsw;
	args.mda_unit = periph->unit_number;
	args.mda_uid = UID_ROOT;
	args.mda_gid = GID_OPERATOR;
	args.mda_mode = 0600;
	args.mda_si_drv1 = periph;
	error = FUNC9(&args, &softc->dev, "%s%d", periph->periph_name,
	    periph->unit_number);
	if (error != 0) {
		FUNC5(periph);
		return (CAM_REQ_CMP_ERR);
	}

	softc->device_stats = FUNC7("pt",
			  periph->unit_number, 0,
			  DEVSTAT_NO_BLOCKSIZE,
			  FUNC1(&cgd->inq_data) |
			  FUNC2(cpi.transport),
			  DEVSTAT_PRIORITY_OTHER);

	FUNC5(periph);

	/*
	 * Add async callbacks for bus reset and
	 * bus device reset calls.  I don't bother
	 * checking if this fails as, in most cases,
	 * the system will function just fine without
	 * them and the only alternative would be to
	 * not attach the device on failure.
	 */
	FUNC14(AC_SENT_BDR | AC_BUS_RESET | AC_LOST_DEVICE,
			   ptasync, periph, periph->path);

	/* Tell the user we've attached to the device */
	FUNC12(periph, NULL);

	return(CAM_REQ_CMP);
}