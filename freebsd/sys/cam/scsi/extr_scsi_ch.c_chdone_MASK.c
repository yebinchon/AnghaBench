#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ccb_state; int status; int /*<<< orphan*/  path; } ;
struct TYPE_3__ {scalar_t__ cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; scalar_t__ data_ptr; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_scsiio csio; } ;
struct scsi_mode_sense_6 {int byte2; } ;
struct scsi_mode_header_6 {int dummy; } ;
struct page_element_address_assignment {int /*<<< orphan*/  ndte; int /*<<< orphan*/  fdtea; int /*<<< orphan*/  niee; int /*<<< orphan*/  fieea; int /*<<< orphan*/  nse; int /*<<< orphan*/  fsea; int /*<<< orphan*/  nmte; int /*<<< orphan*/  mtea; } ;
struct ch_softc {int* sc_counts; int /*<<< orphan*/  state; int /*<<< orphan*/  quirks; void** sc_firsts; void* sc_picker; } ;
struct cam_periph {int flags; int /*<<< orphan*/  path; scalar_t__ softc; } ;
typedef  int /*<<< orphan*/  announce_buf ;

/* Variables and functions */
 int CAM_DEV_QFRZN ; 
 int CAM_PERIPH_INVALID ; 
 int CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 int CAM_SCSI_STATUS_ERROR ; 
 int CAM_STATUS_MASK ; 
 size_t CHET_DT ; 
 size_t CHET_IE ; 
 size_t CHET_MT ; 
 size_t CHET_ST ; 
#define  CH_CCB_PROBE 128 
 int /*<<< orphan*/  CH_Q_BIT_STRING ; 
 int /*<<< orphan*/  CH_Q_NO_DBD ; 
 int /*<<< orphan*/  CH_STATE_NORMAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  M_SCSICH ; 
 char* FUNC0 (int) ; 
 int SF_NO_PRINT ; 
 int SF_RETRY_UA ; 
 int SMS_DBD ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (union ccb*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct scsi_mode_header_6*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_mode_header_6*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ccb_scsiio*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,char*,int,char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (union ccb*) ; 
 int /*<<< orphan*/  FUNC11 (struct cam_periph*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct cam_periph*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (union ccb*) ; 

__attribute__((used)) static void
FUNC15(struct cam_periph *periph, union ccb *done_ccb)
{
	struct ch_softc *softc;
	struct ccb_scsiio *csio;

	softc = (struct ch_softc *)periph->softc;
	csio = &done_ccb->csio;

	switch(done_ccb->ccb_h.ccb_state) {
	case CH_CCB_PROBE:
	{
		struct scsi_mode_header_6 *mode_header;
		struct page_element_address_assignment *ea;
		char announce_buf[80];


		mode_header = (struct scsi_mode_header_6 *)csio->data_ptr;

		ea = (struct page_element_address_assignment *)
			FUNC5(mode_header);

		if ((done_ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_CMP){
			
			softc->sc_firsts[CHET_MT] = FUNC7(ea->mtea);
			softc->sc_counts[CHET_MT] = FUNC7(ea->nmte);
			softc->sc_firsts[CHET_ST] = FUNC7(ea->fsea);
			softc->sc_counts[CHET_ST] = FUNC7(ea->nse);
			softc->sc_firsts[CHET_IE] = FUNC7(ea->fieea);
			softc->sc_counts[CHET_IE] = FUNC7(ea->niee);
			softc->sc_firsts[CHET_DT] = FUNC7(ea->fdtea);
			softc->sc_counts[CHET_DT] = FUNC7(ea->ndte);
			softc->sc_picker = softc->sc_firsts[CHET_MT];

#define PLURAL(c)	(c) == 1 ? "" : "s"
			FUNC9(announce_buf, sizeof(announce_buf),
				"%d slot%s, %d drive%s, "
				"%d picker%s, %d portal%s",
		    		softc->sc_counts[CHET_ST],
				PLURAL(softc->sc_counts[CHET_ST]),
		    		softc->sc_counts[CHET_DT],
				PLURAL(softc->sc_counts[CHET_DT]),
		    		softc->sc_counts[CHET_MT],
				PLURAL(softc->sc_counts[CHET_MT]),
		    		softc->sc_counts[CHET_IE],
				PLURAL(softc->sc_counts[CHET_IE]));
#undef PLURAL
			if (announce_buf[0] != '\0') {
				FUNC11(periph, announce_buf);
				FUNC12(periph, softc->quirks,
				    CH_Q_BIT_STRING);
			}
		} else {
			int error;

			error = FUNC4(done_ccb, CAM_RETRY_SELTO,
					SF_RETRY_UA | SF_NO_PRINT);
			/*
			 * Retry any UNIT ATTENTION type errors.  They
			 * are expected at boot.
			 */
			if (error == ERESTART) {
				/*
				 * A retry was scheduled, so
				 * just return.
				 */
				return;
			} else if (error != 0) {
				struct scsi_mode_sense_6 *sms;
				int frozen, retry_scheduled;

				sms = (struct scsi_mode_sense_6 *)
					done_ccb->csio.cdb_io.cdb_bytes;
				frozen = (done_ccb->ccb_h.status &
				    CAM_DEV_QFRZN) != 0;

				/*
				 * Check to see if block descriptors were
				 * disabled.  Some devices don't like that.
				 * We're taking advantage of the fact that
				 * the first few bytes of the 6 and 10 byte
				 * mode sense commands are the same.  If
				 * block descriptors were disabled, enable
				 * them and re-send the command.
				 */
				if ((sms->byte2 & SMS_DBD) != 0 &&
				    (periph->flags & CAM_PERIPH_INVALID) == 0) {
					sms->byte2 &= ~SMS_DBD;
					FUNC10(done_ccb);
					softc->quirks |= CH_Q_NO_DBD;
					retry_scheduled = 1;
				} else
					retry_scheduled = 0;

				/* Don't wedge this device's queue */
				if (frozen)
					FUNC3(done_ccb->ccb_h.path,
						 /*relsim_flags*/0,
						 /*reduction*/0,
						 /*timeout*/0,
						 /*getcount_only*/0);

				if (retry_scheduled)
					return;

				if ((done_ccb->ccb_h.status & CAM_STATUS_MASK)
				    == CAM_SCSI_STATUS_ERROR) 
					FUNC8(&done_ccb->csio);
				else {
					FUNC13(periph->path,
					    "got CAM status %#x\n",
					    done_ccb->ccb_h.status);
				}
				FUNC13(periph->path, "fatal error, failed "
				    "to attach to device\n");

				FUNC1(periph);

			}
		}
		softc->state = CH_STATE_NORMAL;
		FUNC6(mode_header, M_SCSICH);
		/*
		 * Since our peripheral may be invalidated by an error
		 * above or an external event, we must release our CCB
		 * before releasing the probe lock on the peripheral.
		 * The peripheral will only go away once the last lock
		 * is removed, and we need it around for the CCB release
		 * operation.
		 */
		FUNC14(done_ccb);
		FUNC2(periph);
		return;
	}
	default:
		break;
	}
	FUNC14(done_ccb);
}