#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union ccb {int /*<<< orphan*/  ccb_h; } ;
struct cam_periph {TYPE_3__* path; TYPE_2__* softc; } ;
struct TYPE_7__ {int /*<<< orphan*/  action; struct cam_periph* periph; scalar_t__ flags; int /*<<< orphan*/  request_ccbs; } ;
typedef  TYPE_2__ probe_softc ;
typedef  int /*<<< orphan*/  cam_status ;
struct TYPE_9__ {int /*<<< orphan*/  tqe; } ;
struct TYPE_8__ {TYPE_1__* bus; } ;
struct TYPE_6__ {int /*<<< orphan*/  last_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_PROBE ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PROBE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ periph_links ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_periph*) ; 
 int /*<<< orphan*/  scsi_delay ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static cam_status
FUNC9(struct cam_periph *periph, void *arg)
{
	union ccb *request_ccb;	/* CCB representing the probe request */
	probe_softc *softc;

	request_ccb = (union ccb *)arg;
	if (request_ccb == NULL) {
		FUNC6("proberegister: no probe CCB, "
		       "can't register device\n");
		return(CAM_REQ_CMP_ERR);
	}

	softc = (probe_softc *)FUNC5(sizeof(*softc), M_CAMXPT, M_NOWAIT);

	if (softc == NULL) {
		FUNC6("proberegister: Unable to probe new device. "
		       "Unable to allocate softc\n");
		return(CAM_REQ_CMP_ERR);
	}
	FUNC1(&softc->request_ccbs);
	FUNC2(&softc->request_ccbs, &request_ccb->ccb_h,
			  periph_links.tqe);
	softc->flags = 0;
	periph->softc = softc;
	softc->periph = periph;
	softc->action = PROBE_INVALID;
	if (FUNC3(periph) != 0)
		return (CAM_REQ_CMP_ERR);

	FUNC0(periph->path, CAM_DEBUG_PROBE, ("Probe started\n"));
	FUNC8(periph->path);

	/*
	 * Ensure we've waited at least a bus settle
	 * delay before attempting to probe the device.
	 * For HBAs that don't do bus resets, this won't make a difference.
	 */
	FUNC4(periph, &periph->path->bus->last_reset,
				      scsi_delay);
	FUNC7(periph);
	return(CAM_REQ_CMP);
}