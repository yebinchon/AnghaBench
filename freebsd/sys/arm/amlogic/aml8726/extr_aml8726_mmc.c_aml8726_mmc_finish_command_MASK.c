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
struct mmc_data {int flags; scalar_t__ len; } ;
struct mmc_command {int error; TYPE_1__* mrq; struct mmc_data* data; } ;
struct aml8726_mmc_softc {int /*<<< orphan*/  dmamap; int /*<<< orphan*/  dmatag; struct mmc_command* cmd; int /*<<< orphan*/  ch; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* done ) (TYPE_1__*) ;struct mmc_command* stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_MMC_IRQ_STATUS_CLEAR_IRQ ; 
 int /*<<< orphan*/  AML_MMC_IRQ_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_mmc_softc*) ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_mmc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MMC_DATA_READ ; 
 int MMC_DATA_WRITE ; 
 int MMC_ERR_NONE ; 
 int FUNC4 (struct aml8726_mmc_softc*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(struct aml8726_mmc_softc *sc, int mmc_error)
{
	int mmc_stop_error;
	struct mmc_command *cmd;
	struct mmc_command *stop_cmd;
	struct mmc_data *data;

	FUNC0(sc);

	/* Clear all interrupts since the request is no longer in flight. */
	FUNC3(sc, AML_MMC_IRQ_STATUS_REG, AML_MMC_IRQ_STATUS_CLEAR_IRQ);
	FUNC2(sc, AML_MMC_IRQ_STATUS_REG);

	/* In some cases (e.g. finish called via timeout) this is a NOP. */
	FUNC7(&sc->ch);

	cmd = sc->cmd;
	sc->cmd = NULL;

	cmd->error = mmc_error;

	data = cmd->data;

	if (data && data->len &&
	    (data->flags & (MMC_DATA_READ | MMC_DATA_WRITE)) != 0) {
		if ((data->flags & MMC_DATA_READ) != 0)
			FUNC5(sc->dmatag, sc->dmamap,
			    BUS_DMASYNC_POSTREAD);
		else
			FUNC5(sc->dmatag, sc->dmamap,
			    BUS_DMASYNC_POSTWRITE);
		FUNC6(sc->dmatag, sc->dmamap);
	}

	/*
	 * If there's a linked stop command, then start the stop command.
	 * In order to establish a known state attempt the stop command
	 * even if the original request encountered an error.
	 */

	stop_cmd = (cmd->mrq->stop != cmd) ? cmd->mrq->stop : NULL;

	if (stop_cmd != NULL) {
		mmc_stop_error = FUNC4(sc, stop_cmd);
		if (mmc_stop_error == MMC_ERR_NONE) {
			FUNC1(sc);
			return;
		}
		stop_cmd->error = mmc_stop_error;
	}

	FUNC1(sc);

	/* Execute the callback after dropping the lock. */
	if (cmd->mrq)
		cmd->mrq->done(cmd->mrq);
}