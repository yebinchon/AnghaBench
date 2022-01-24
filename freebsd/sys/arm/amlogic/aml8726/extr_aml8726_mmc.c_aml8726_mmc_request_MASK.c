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
struct mmc_request {int /*<<< orphan*/  (* done ) (struct mmc_request*) ;TYPE_1__* cmd; } ;
struct aml8726_mmc_softc {int /*<<< orphan*/ * cmd; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_mmc_softc*) ; 
 int EBUSY ; 
 int MMC_ERR_NONE ; 
 int FUNC2 (struct aml8726_mmc_softc*,TYPE_1__*) ; 
 struct aml8726_mmc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_request*) ; 

__attribute__((used)) static int
FUNC5(device_t bus, device_t child, struct mmc_request *req)
{
	struct aml8726_mmc_softc *sc = FUNC3(bus);
	int mmc_error;

	FUNC0(sc);

	if (sc->cmd != NULL) {
		FUNC1(sc);
		return (EBUSY);
	}

	mmc_error = FUNC2(sc, req->cmd);

	FUNC1(sc);

	/* Execute the callback after dropping the lock. */
	if (mmc_error != MMC_ERR_NONE) {
		req->cmd->error = mmc_error;
		req->done(req);
	}

	return (0);
}