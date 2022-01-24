#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int32_t ;
struct aac_softc {int aac_state; int aac_support_opt2; int doorbell_mask; int aac_max_msix; int msi_enabled; int flags; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_dev; } ;
struct aac_pause_command {int Timeout; int Min; int NoRescan; int /*<<< orphan*/  Type; int /*<<< orphan*/  Command; } ;
struct aac_fib {int /*<<< orphan*/ * data; } ;
struct aac_command {int /*<<< orphan*/  (* cm_complete ) (struct aac_command*) ;int /*<<< orphan*/  cm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AAC_CMD_RESET ; 
 int /*<<< orphan*/  AAC_DISABLE_INTERRUPT ; 
 int /*<<< orphan*/  AAC_ENABLE_INTERRUPT ; 
 int /*<<< orphan*/  AAC_ENABLE_MSIX ; 
 int AAC_FLAGS_SYNC_MODE ; 
 int /*<<< orphan*/  AAC_IOP_RESET ; 
 int /*<<< orphan*/  AAC_IOP_RESET_ALWAYS ; 
 int /*<<< orphan*/  AAC_IRCSR ; 
 int AAC_IRCSR_CORES_RST ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,int /*<<< orphan*/ ,int) ; 
 int AAC_SRB_STS_INVALID_REQUEST ; 
 int /*<<< orphan*/  AAC_SRC_IDBR ; 
 int AAC_STATE_RESET ; 
 int AAC_SUPPORTED_DOORBELL_RESET ; 
 int AAC_SUPPORTED_MU_RESET ; 
 int /*<<< orphan*/  CT_PAUSE_IO ; 
 int /*<<< orphan*/  ContainerCommand ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int FALSE ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  VM_ContainerConfig ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*,struct aac_fib**) ; 
 scalar_t__ FUNC4 (struct aac_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct aac_softc*) ; 
 struct aac_command* FUNC6 (struct aac_softc*) ; 
 struct aac_command* FUNC7 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aac_fib*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct aac_softc*) ; 
 int FUNC13 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC20 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC21 (struct aac_command*) ; 

__attribute__((used)) static int
FUNC22(struct aac_softc *sc)
{
	struct aac_command *cm;
	struct aac_fib *fib;
	struct aac_pause_command *pc;
	u_int32_t status, reset_mask, waitCount, max_msix_orig;
	int ret, msi_enabled_orig;

	FUNC15(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	FUNC16(&sc->aac_io_lock, MA_OWNED);

	if (sc->aac_state & AAC_STATE_RESET) {
		FUNC14(sc->aac_dev, "aac_reset_adapter() already in progress\n");
		return (EINVAL);
	}
	sc->aac_state |= AAC_STATE_RESET;

	/* disable interrupt */
	FUNC0(sc, AAC_DISABLE_INTERRUPT);

	/*
	 * Abort all pending commands:
	 * a) on the controller
	 */
	while ((cm = FUNC6(sc)) != NULL) {
		cm->cm_flags |= AAC_CMD_RESET;

		/* is there a completion handler? */
		if (cm->cm_complete != NULL) {
			cm->cm_complete(cm);
		} else {
			/* assume that someone is sleeping on this
			 * command
			 */
			FUNC21(cm);
		}
	}

	/* b) in the waiting queues */
	while ((cm = FUNC7(sc)) != NULL) {
		cm->cm_flags |= AAC_CMD_RESET;

		/* is there a completion handler? */
		if (cm->cm_complete != NULL) {
			cm->cm_complete(cm);
		} else {
			/* assume that someone is sleeping on this
			 * command
			 */
			FUNC21(cm);
		}
	}

	/* flush drives */
	if (FUNC4(sc, NULL) == 0) {
		FUNC18(&sc->aac_io_lock);
		(void) FUNC11(sc->aac_dev);
		FUNC17(&sc->aac_io_lock);
	}

	/* execute IOP reset */
	if (sc->aac_support_opt2 & AAC_SUPPORTED_MU_RESET) {
		FUNC1(sc, AAC_IRCSR, AAC_IRCSR_CORES_RST);

		/* We need to wait for 5 seconds before accessing the MU again
		 * 10000 * 100us = 1000,000us = 1000ms = 1s
		 */
		waitCount = 5 * 10000;
		while (waitCount) {
			FUNC2(100);			/* delay 100 microseconds */
			waitCount--;
		}
	} else {
		ret = FUNC13(sc, AAC_IOP_RESET_ALWAYS,
			0, 0, 0, 0, &status, &reset_mask);
		if (ret && !sc->doorbell_mask) {
			/* call IOP_RESET for older firmware */
			if ((FUNC13(sc, AAC_IOP_RESET, 0,0,0,0,
			    &status, NULL)) != 0) {
				if (status == AAC_SRB_STS_INVALID_REQUEST) {
					FUNC14(sc->aac_dev,
					    "IOP_RESET not supported\n");
				} else {
					/* probably timeout */
					FUNC14(sc->aac_dev,
					    "IOP_RESET failed\n");
				}

				/* unwind aac_shutdown() */
				FUNC3(sc, &fib);
				pc = (struct aac_pause_command *)&fib->data[0];
				pc->Command = VM_ContainerConfig;
				pc->Type = CT_PAUSE_IO;
				pc->Timeout = 1;
				pc->Min = 1;
				pc->NoRescan = 1;

				(void) FUNC10(sc, ContainerCommand, 0,
				    fib, sizeof (struct aac_pause_command));
				FUNC9(sc);

				goto finish;
			}
		} else if (sc->doorbell_mask) {
			ret = 0;
			reset_mask = sc->doorbell_mask;
		}
		if (!ret &&
		    (sc->aac_support_opt2 & AAC_SUPPORTED_DOORBELL_RESET)) {
			FUNC1(sc, AAC_SRC_IDBR, reset_mask);
			/*
			 * We need to wait for 5 seconds before accessing the
			 * doorbell again;
			 * 10000 * 100us = 1000,000us = 1000ms = 1s
			 */
			waitCount = 5 * 10000;
			while (waitCount) {
				FUNC2(100);	/* delay 100 microseconds */
				waitCount--;
			}
		}
	}

	/*
	 * Initialize the adapter.
	 */
	max_msix_orig = sc->aac_max_msix;
	msi_enabled_orig = sc->msi_enabled;
	sc->msi_enabled = FALSE;
	if (FUNC5(sc) != 0)
		goto finish;
	if (!(sc->flags & AAC_FLAGS_SYNC_MODE)) {
		sc->aac_max_msix = max_msix_orig;
		if (msi_enabled_orig) {
			sc->msi_enabled = msi_enabled_orig;
			FUNC0(sc, AAC_ENABLE_MSIX);
		}
		FUNC18(&sc->aac_io_lock);
		FUNC8(sc);
		FUNC17(&sc->aac_io_lock);
	}

finish:
	sc->aac_state &= ~AAC_STATE_RESET;
	FUNC0(sc, AAC_ENABLE_INTERRUPT);
	FUNC12(sc);
	return (0);
}