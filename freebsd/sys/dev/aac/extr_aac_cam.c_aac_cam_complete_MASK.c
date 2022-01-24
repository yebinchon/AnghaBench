#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ func_code; int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int sense_len; int sense_resid; int /*<<< orphan*/  sense_data; int /*<<< orphan*/  scsi_status; } ;
union ccb {TYPE_3__ ccb_h; TYPE_2__ csio; } ;
struct scsi_sense_data {int dummy; } ;
struct aac_srb_response {scalar_t__ fib_status; int sense_len; int /*<<< orphan*/ * sense; int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  srb_status; } ;
struct aac_softc {int /*<<< orphan*/  aac_dev; } ;
struct aac_command {TYPE_1__* cm_fib; union ccb* cm_private; struct aac_softc* cm_sc; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_AUTOSNS_VALID ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 scalar_t__ XPT_SCSI_IO ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

__attribute__((used)) static void
FUNC8(struct aac_command *cm)
{
	union	ccb *ccb;
	struct 	aac_srb_response *srbr;
	struct	aac_softc *sc;
	int	sense_returned;

	sc = cm->cm_sc;
	FUNC5(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	ccb = cm->cm_private;
	srbr = (struct aac_srb_response *)&cm->cm_fib->data[0];

	if (srbr->fib_status != 0) {
		FUNC4(sc->aac_dev, "Passthru FIB failed!\n");
		ccb->ccb_h.status = CAM_REQ_ABORTED;
	} else {
		/*
		 * The SRB error codes just happen to match the CAM error
		 * codes.  How convenient!
		 */
		ccb->ccb_h.status = srbr->srb_status;

		/* Take care of SCSI_IO ops. */
		if (ccb->ccb_h.func_code == XPT_SCSI_IO) {
			ccb->csio.scsi_status = srbr->scsi_status;

			/* Take care of autosense */
			if (srbr->sense_len) {
				sense_returned = srbr->sense_len;
				if (sense_returned < ccb->csio.sense_len)
					ccb->csio.sense_resid =
					   ccb->csio.sense_len -
					   sense_returned;
					else
					    ccb->csio.sense_resid = 0;
				FUNC3(&ccb->csio.sense_data,
				    sizeof(struct scsi_sense_data));
				FUNC2(&srbr->sense[0], &ccb->csio.sense_data,
				    FUNC6(ccb->csio.sense_len, sense_returned));
				ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
				// scsi_sense_print(&ccb->csio);
			}

			FUNC0(sc, ccb);
		}
	}

	FUNC1(cm);
	FUNC7(ccb);
}