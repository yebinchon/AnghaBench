#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct mmc_params {int dummy; } ;
struct cam_periph {TYPE_4__* path; TYPE_2__* softc; } ;
struct TYPE_6__ {scalar_t__ restart; int /*<<< orphan*/  action; struct cam_periph* periph; scalar_t__ acmd41_count; scalar_t__ flags; } ;
typedef  TYPE_2__ mmcprobe_softc ;
typedef  int /*<<< orphan*/  cam_status ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  mmc_ident_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_PROBE ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int CAM_DEV_UNCONFIGURED ; 
 int /*<<< orphan*/  CAM_PRIORITY_XPT ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PROBE_IDENTIFY ; 
 int /*<<< orphan*/  PROBE_INVALID ; 
 int /*<<< orphan*/  PROBE_RESET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cam_periph*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cam_status
FUNC7(struct cam_periph *periph, void *arg)
{
	mmcprobe_softc *softc;
	union ccb *request_ccb;	/* CCB representing the probe request */
	int status;

	FUNC0(periph->path, CAM_DEBUG_TRACE, ("mmcprobe_register\n"));

	request_ccb = (union ccb *)arg;
	if (request_ccb == NULL) {
		FUNC5("mmcprobe_register: no probe CCB, "
		       "can't register device\n");
		return(CAM_REQ_CMP_ERR);
	}

	softc = (mmcprobe_softc *)FUNC3(sizeof(*softc), M_CAMXPT, M_NOWAIT);

	if (softc == NULL) {
		FUNC5("proberegister: Unable to probe new device. "
		       "Unable to allocate softc\n");
		return(CAM_REQ_CMP_ERR);
	}

	softc->flags = 0;
	softc->acmd41_count = 0;
	periph->softc = softc;
	softc->periph = periph;
	softc->action = PROBE_INVALID;
        softc->restart = 0;
	status = FUNC2(periph);

        FUNC4(&periph->path->device->mmc_ident_data, 0, sizeof(struct mmc_params));
	if (status != 0) {
		FUNC5("proberegister: cam_periph_acquire failed (status=%d)\n",
			status);
		return (CAM_REQ_CMP_ERR);
	}
	FUNC0(periph->path, CAM_DEBUG_PROBE, ("Probe started\n"));

	if (periph->path->device->flags & CAM_DEV_UNCONFIGURED)
		FUNC1(softc, PROBE_RESET);
	else
		FUNC1(softc, PROBE_IDENTIFY);

	/* This will kick the ball */
	FUNC6(periph, CAM_PRIORITY_XPT);

	return(CAM_REQ_CMP);
}