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
typedef  int u_int32_t ;
struct aac_softc {int flags; int* aac_host_rrq_idx; int aac_vector_cap; int /*<<< orphan*/  aac_io_lock; scalar_t__ aif_pending; TYPE_2__* aac_common; int /*<<< orphan*/ * aac_rrq_outstanding; struct aac_command* aac_commands; struct aac_command* aac_sync_cm; scalar_t__ msi_enabled; } ;
struct aac_msix_ctx {int vector_no; struct aac_softc* sc; } ;
struct TYPE_3__ {int XferState; } ;
struct aac_fib {scalar_t__ data; TYPE_1__ Header; } ;
struct aac_command {int /*<<< orphan*/  (* cm_complete ) (struct aac_command*) ;int /*<<< orphan*/  cm_flags; struct aac_fib* cm_fib; } ;
struct TYPE_4__ {int* ac_host_rrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AAC_CLEAR_AIF_BIT ; 
 int /*<<< orphan*/  AAC_CMD_COMPLETED ; 
 int /*<<< orphan*/  AAC_CMD_FASTRESP ; 
 int AAC_DB_AIF_PENDING ; 
 int AAC_DB_RESPONSE_SENT_NS ; 
 int AAC_DB_SYNC_COMMAND ; 
 int AAC_FIBSTATE_DONEADAP ; 
 int AAC_FIBSTATE_NOMOREAIF ; 
 int AAC_INT_MODE_AIF ; 
 int AAC_INT_MODE_INTX ; 
 int AAC_INT_MODE_MSI ; 
 int AAC_INT_MODE_SYNC ; 
 int FUNC1 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,int /*<<< orphan*/ ,int) ; 
 int AAC_QUEUE_FRZN ; 
 int /*<<< orphan*/  AAC_SRC_ODBR_C ; 
 int /*<<< orphan*/  AAC_SRC_ODBR_MSI ; 
 int /*<<< orphan*/  AAC_SRC_ODBR_R ; 
 int AAC_SRC_ODR_SHIFT ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int ST_OK ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*,struct aac_fib*) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC13 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC14 (struct aac_command*) ; 

void
FUNC15(void *arg)
{
	struct aac_msix_ctx *ctx;
	struct aac_softc *sc;
	int vector_no;
	struct aac_command *cm;
	struct aac_fib *fib;
	u_int32_t bellbits, bellbits_shifted, index, handle;
	int isFastResponse, isAif, noMoreAif, mode;

	ctx = (struct aac_msix_ctx *)arg;
	sc = ctx->sc;
	vector_no = ctx->vector_no;

	FUNC9(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	FUNC10(&sc->aac_io_lock);

	if (sc->msi_enabled) {
		mode = AAC_INT_MODE_MSI;
		if (vector_no == 0) {
			bellbits = FUNC1(sc, AAC_SRC_ODBR_MSI);
			if (bellbits & 0x40000)
				mode |= AAC_INT_MODE_AIF;
			else if (bellbits & 0x1000)
				mode |= AAC_INT_MODE_SYNC;
		}
	} else {	
		mode = AAC_INT_MODE_INTX;
		bellbits = FUNC1(sc, AAC_SRC_ODBR_R);
		if (bellbits & AAC_DB_RESPONSE_SENT_NS) {
			bellbits = AAC_DB_RESPONSE_SENT_NS;
			FUNC2(sc, AAC_SRC_ODBR_C, bellbits);
		} else {
			bellbits_shifted = (bellbits >> AAC_SRC_ODR_SHIFT);
			FUNC2(sc, AAC_SRC_ODBR_C, bellbits);
			if (bellbits_shifted & AAC_DB_AIF_PENDING)
				mode |= AAC_INT_MODE_AIF;
			else if (bellbits_shifted & AAC_DB_SYNC_COMMAND) 
				mode |= AAC_INT_MODE_SYNC;
		}
		/* ODR readback, Prep #238630 */
		FUNC1(sc, AAC_SRC_ODBR_R);	
	}

	if (mode & AAC_INT_MODE_SYNC) {
		if (sc->aac_sync_cm) {	
			cm = sc->aac_sync_cm;
			cm->cm_flags |= AAC_CMD_COMPLETED;
			/* is there a completion handler? */
			if (cm->cm_complete != NULL) {
				cm->cm_complete(cm);
			} else {
				/* assume that someone is sleeping on this command */
				FUNC14(cm);
			}
			sc->flags &= ~AAC_QUEUE_FRZN;
			sc->aac_sync_cm = NULL;
		}
		mode = 0;
	}

	if (mode & AAC_INT_MODE_AIF) {
		if (mode & AAC_INT_MODE_INTX) {
			FUNC5(sc);
			mode = 0;
		} 
	}

	if (mode) {
		/* handle async. status */
		index = sc->aac_host_rrq_idx[vector_no];
		for (;;) {
			isFastResponse = isAif = noMoreAif = 0;
			/* remove toggle bit (31) */
			handle = (sc->aac_common->ac_host_rrq[index] & 0x7fffffff);
			/* check fast response bit (30) */
			if (handle & 0x40000000) 
				isFastResponse = 1;
			/* check AIF bit (23) */
			else if (handle & 0x00800000) 
				isAif = TRUE;
			handle &= 0x0000ffff;
			if (handle == 0) 
				break;

			cm = sc->aac_commands + (handle - 1);
			fib = cm->cm_fib;
			sc->aac_rrq_outstanding[vector_no]--;
			if (isAif) {
				noMoreAif = (fib->Header.XferState & AAC_FIBSTATE_NOMOREAIF) ? 1:0;
				if (!noMoreAif)
					FUNC3(sc, fib);
				FUNC4(cm);
				FUNC7(cm);
			} else {
				if (isFastResponse) {
					fib->Header.XferState |= AAC_FIBSTATE_DONEADAP;
					*((u_int32_t *)(fib->data)) = ST_OK;
					cm->cm_flags |= AAC_CMD_FASTRESP;
				}
				FUNC4(cm);
				FUNC6(cm);
				cm->cm_flags |= AAC_CMD_COMPLETED;

				/* is there a completion handler? */
				if (cm->cm_complete != NULL) {
					cm->cm_complete(cm);
				} else {
					/* assume that someone is sleeping on this command */
					FUNC14(cm);
				}
				sc->flags &= ~AAC_QUEUE_FRZN;
			}

			sc->aac_common->ac_host_rrq[index++] = 0;
			if (index == (vector_no + 1) * sc->aac_vector_cap) 
				index = vector_no * sc->aac_vector_cap;
			sc->aac_host_rrq_idx[vector_no] = index;

			if ((isAif && !noMoreAif) || sc->aif_pending) 
				FUNC5(sc);
		}
	}

	if (mode & AAC_INT_MODE_AIF) {
		FUNC5(sc);
		FUNC0(sc, AAC_CLEAR_AIF_BIT);
		mode = 0;
	}

	/* see if we can start some more I/O */
	if ((sc->flags & AAC_QUEUE_FRZN) == 0)
		FUNC8(sc);
	FUNC11(&sc->aac_io_lock);
}