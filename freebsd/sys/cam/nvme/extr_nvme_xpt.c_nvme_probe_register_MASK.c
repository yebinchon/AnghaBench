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
union ccb {int /*<<< orphan*/  ccb_h; } ;
struct cam_periph {int /*<<< orphan*/  path; TYPE_1__* softc; } ;
struct TYPE_3__ {int /*<<< orphan*/  action; struct cam_periph* periph; scalar_t__ flags; int /*<<< orphan*/  request_ccbs; } ;
typedef  TYPE_1__ nvme_probe_softc ;
typedef  int /*<<< orphan*/  cam_status ;
struct TYPE_4__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_PROBE ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NVME_PROBE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cam_periph*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 
 TYPE_2__ periph_links ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static cam_status
FUNC7(struct cam_periph *periph, void *arg)
{
	union ccb *request_ccb;	/* CCB representing the probe request */
	nvme_probe_softc *softc;

	request_ccb = (union ccb *)arg;
	if (request_ccb == NULL) {
		FUNC6("nvme_probe_register: no probe CCB, "
		       "can't register device\n");
		return(CAM_REQ_CMP_ERR);
	}

	softc = (nvme_probe_softc *)FUNC4(sizeof(*softc), M_CAMXPT, M_ZERO | M_NOWAIT);

	if (softc == NULL) {
		FUNC6("nvme_probe_register: Unable to probe new device. "
		       "Unable to allocate softc\n");
		return(CAM_REQ_CMP_ERR);
	}
	FUNC1(&softc->request_ccbs);
	FUNC2(&softc->request_ccbs, &request_ccb->ccb_h,
			  periph_links.tqe);
	softc->flags = 0;
	periph->softc = softc;
	softc->periph = periph;
	softc->action = NVME_PROBE_INVALID;
	if (FUNC3(periph) != 0)
		return (CAM_REQ_CMP_ERR);

	FUNC0(periph->path, CAM_DEBUG_PROBE, ("Probe started\n"));

//	nvme_device_transport(periph->path);
	FUNC5(periph);

	return(CAM_REQ_CMP);
}