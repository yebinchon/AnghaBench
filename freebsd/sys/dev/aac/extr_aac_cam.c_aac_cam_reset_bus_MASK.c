#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct cam_sim {int dummy; } ;
struct aac_vmioctl {int /*<<< orphan*/ * IoctlBuf; int /*<<< orphan*/  IoctlCmd; scalar_t__ ObjId; int /*<<< orphan*/  MethId; int /*<<< orphan*/  ObjType; int /*<<< orphan*/  Command; } ;
struct aac_softc {int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  scsi_method_id; } ;
struct aac_resetbus {int /*<<< orphan*/  BusNumber; } ;
struct aac_fib {int /*<<< orphan*/ * data; } ;
struct aac_cam {TYPE_1__* inf; } ;
struct TYPE_2__ {int /*<<< orphan*/  BusNumber; struct aac_softc* aac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  ContainerCommand ; 
 int /*<<< orphan*/  FT_DRIVE ; 
 int /*<<< orphan*/  ResetBus ; 
 int /*<<< orphan*/  VM_Ioctl ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,struct aac_fib**) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*) ; 
 int FUNC2 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aac_fib*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_vmioctl*,int) ; 
 scalar_t__ FUNC4 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static u_int32_t
FUNC7(struct cam_sim *sim, union ccb *ccb)
{
	struct aac_fib *fib;
	struct aac_softc *sc;
	struct aac_cam *camsc;
	struct aac_vmioctl *vmi;
	struct aac_resetbus *rbc;
	int e;

	camsc = (struct aac_cam *)FUNC4(sim);
	sc = camsc->inf->aac_sc;

	if (sc == NULL) {
		FUNC6("aac: Null sc?\n");
		return (CAM_REQ_ABORTED);
	}

	FUNC0(sc, &fib);

	vmi = (struct aac_vmioctl *)&fib->data[0];
	FUNC3(vmi, sizeof(struct aac_vmioctl));

	vmi->Command = VM_Ioctl;
	vmi->ObjType = FT_DRIVE;
	vmi->MethId = sc->scsi_method_id;
	vmi->ObjId = 0;
	vmi->IoctlCmd = ResetBus;

	rbc = (struct aac_resetbus *)&vmi->IoctlBuf[0];
	rbc->BusNumber = camsc->inf->BusNumber;

	e = FUNC2(sc, ContainerCommand, 0, fib,
	    sizeof(struct aac_vmioctl));
	if (e) {
		FUNC5(sc->aac_dev,"Error %d sending ResetBus command\n",
		    e);
		FUNC1(sc);
		return (CAM_REQ_ABORTED);
	}

	FUNC1(sc);
	return (CAM_REQ_CMP);
}