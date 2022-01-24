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
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
struct aac_sim {TYPE_1__* aac_sc; int /*<<< orphan*/  TargetsPerBus; struct aac_cam* aac_cam; } ;
struct aac_cam {struct cam_path* path; struct cam_sim* sim; struct aac_sim* inf; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  cam_rescan_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int EIO ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  aac_cam_action ; 
 int /*<<< orphan*/  aac_cam_poll ; 
 int /*<<< orphan*/  aac_cam_rescan ; 
 struct cam_sim* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct aac_cam*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_sim*) ; 
 struct cam_devq* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_devq*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct cam_sim*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct cam_devq *devq;
	struct cam_sim *sim;
	struct cam_path *path;
	struct aac_cam *camsc;
	struct aac_sim *inf;

	FUNC8(NULL, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	camsc = (struct aac_cam *)FUNC6(dev);
	inf = (struct aac_sim *)FUNC5(dev);
	camsc->inf = inf;
	camsc->inf->aac_cam = camsc;

	devq = FUNC3(inf->TargetsPerBus);
	if (devq == NULL)
		return (EIO);

	sim = FUNC0(aac_cam_action, aac_cam_poll, "aacp", camsc,
	    FUNC7(dev), &inf->aac_sc->aac_io_lock, 1, 1, devq);
	if (sim == NULL) {
		FUNC4(devq);
		return (EIO);
	}

	/* Since every bus has it's own sim, every bus 'appears' as bus 0 */
	FUNC9(&inf->aac_sc->aac_io_lock);
	if (FUNC12(sim, dev, 0) != CAM_SUCCESS) {
		FUNC1(sim, TRUE);
		FUNC10(&inf->aac_sc->aac_io_lock);
		return (EIO);
	}

	if (FUNC13(&path, NULL, FUNC2(sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC11(FUNC2(sim));
		FUNC1(sim, TRUE);
		FUNC10(&inf->aac_sc->aac_io_lock);
		return (EIO);
	}
	inf->aac_sc->cam_rescan_cb = aac_cam_rescan;
	FUNC10(&inf->aac_sc->aac_io_lock);

	camsc->sim = sim;
	camsc->path = path;

	return (0);
}