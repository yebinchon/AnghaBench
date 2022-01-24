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
struct aac_softc {int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/ * cam_rescan_cb; } ;
struct aac_cam {int /*<<< orphan*/  sim; int /*<<< orphan*/  path; TYPE_1__* inf; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * aac_cam; struct aac_softc* aac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct aac_softc *sc;
	struct aac_cam *camsc;
	FUNC3(NULL, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	camsc = (struct aac_cam *)FUNC2(dev);
	sc = camsc->inf->aac_sc;
	camsc->inf->aac_cam = NULL;

	FUNC4(&sc->aac_io_lock);

	FUNC6(AC_LOST_DEVICE, camsc->path, NULL);
	FUNC8(camsc->path);
	FUNC7(FUNC1(camsc->sim));
	FUNC0(camsc->sim, /*free_devq*/TRUE);

	sc->cam_rescan_cb = NULL;

	FUNC5(&sc->aac_io_lock);

	return (0);
}