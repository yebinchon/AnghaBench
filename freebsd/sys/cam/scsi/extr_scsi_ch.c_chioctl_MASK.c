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
typedef  int u_long ;
struct thread {int dummy; } ;
struct changer_set_voltag_request {int dummy; } ;
struct changer_position {int dummy; } ;
struct changer_params {int /*<<< orphan*/  cp_ndrives; int /*<<< orphan*/  cp_nportals; int /*<<< orphan*/  cp_nslots; int /*<<< orphan*/  cp_npickers; } ;
struct changer_move {int dummy; } ;
struct changer_exchange {int dummy; } ;
struct changer_element_status_request {int dummy; } ;
struct ch_softc {int sc_picker; int* sc_firsts; int /*<<< orphan*/ * sc_counts; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 size_t CHET_DT ; 
 size_t CHET_IE ; 
 size_t CHET_MT ; 
 size_t CHET_ST ; 
#define  CHIOEXCHANGE 137 
#define  CHIOGPARAMS 136 
#define  CHIOGPICKER 135 
#define  CHIOGSTATUS 134 
#define  CHIOIELEM 133 
#define  CHIOMOVE 132 
#define  CHIOPOSITION 131 
#define  CHIOSETVOLTAG 130 
#define  CHIOSPICKER 129 
 int EBADF ; 
 int EINVAL ; 
 int ENXIO ; 
 int FWRITE ; 
#define  OCHIOGSTATUS 128 
 int SCSI_REV_0 ; 
 int SCSI_REV_2 ; 
 int FUNC1 (struct cam_periph*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 int /*<<< orphan*/  cherror ; 
 int FUNC4 (struct cam_periph*,struct changer_exchange*) ; 
 int FUNC5 (struct cam_periph*,int,int,struct changer_element_status_request*) ; 
 int FUNC6 (struct cam_periph*,unsigned int) ; 
 int FUNC7 (struct cam_periph*,struct changer_move*) ; 
 int FUNC8 (struct cam_periph*,struct changer_position*) ; 
 int FUNC9 (struct cam_periph*) ; 
 int FUNC10 (struct cam_periph*,struct changer_set_voltag_request*) ; 

__attribute__((used)) static int
FUNC11(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
	struct cam_periph *periph;
	struct ch_softc *softc;
	int error;

	periph = (struct cam_periph *)dev->si_drv1;
	FUNC2(periph);
	FUNC0(periph->path, CAM_DEBUG_TRACE, ("entering chioctl\n"));

	softc = (struct ch_softc *)periph->softc;

	error = 0;

	FUNC0(periph->path, CAM_DEBUG_TRACE, 
		  ("trying to do ioctl %#lx\n", cmd));

	/*
	 * If this command can change the device's state, we must
	 * have the device open for writing.
	 */
	switch (cmd) {
	case CHIOGPICKER:
	case CHIOGPARAMS:
	case OCHIOGSTATUS:
	case CHIOGSTATUS:
		break;

	default:
		if ((flag & FWRITE) == 0) {
			FUNC3(periph);
			return (EBADF);
		}
	}

	switch (cmd) {
	case CHIOMOVE:
		error = FUNC7(periph, (struct changer_move *)addr);
		break;

	case CHIOEXCHANGE:
		error = FUNC4(periph, (struct changer_exchange *)addr);
		break;

	case CHIOPOSITION:
		error = FUNC8(periph, (struct changer_position *)addr);
		break;

	case CHIOGPICKER:
		*(int *)addr = softc->sc_picker - softc->sc_firsts[CHET_MT];
		break;

	case CHIOSPICKER:
	{
		int new_picker = *(int *)addr;

		if (new_picker > (softc->sc_counts[CHET_MT] - 1)) {
			error = EINVAL;
			break;
		}
		softc->sc_picker = softc->sc_firsts[CHET_MT] + new_picker;
		break;
	}
	case CHIOGPARAMS:
	{
		struct changer_params *cp = (struct changer_params *)addr;

		cp->cp_npickers = softc->sc_counts[CHET_MT];
		cp->cp_nslots = softc->sc_counts[CHET_ST];
		cp->cp_nportals = softc->sc_counts[CHET_IE];
		cp->cp_ndrives = softc->sc_counts[CHET_DT];
		break;
	}
	case CHIOIELEM:
		error = FUNC6(periph, *(unsigned int *)addr);
		break;

	case OCHIOGSTATUS:
	{
		error = FUNC5(periph, SCSI_REV_2, cmd,
		    (struct changer_element_status_request *)addr);
		break;
	}

	case CHIOGSTATUS:
	{
		int scsi_version;

		scsi_version = FUNC9(periph);
		if (scsi_version >= SCSI_REV_0) {
			error = FUNC5(periph, scsi_version, cmd,
			    (struct changer_element_status_request *)addr);
	  	}
		else { /* unable to determine the SCSI version */
			FUNC3(periph);
			return (ENXIO);
		}
		break;
	}

	case CHIOSETVOLTAG:
	{
		error = FUNC10(periph,
				    (struct changer_set_voltag_request *) addr);
		break;
	}

	/* Implement prevent/allow? */

	default:
		error = FUNC1(periph, cmd, addr, cherror);
		break;
	}

	FUNC3(periph);
	return (error);
}