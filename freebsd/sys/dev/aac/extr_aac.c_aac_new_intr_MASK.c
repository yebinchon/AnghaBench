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
typedef  int u_int32_t ;
struct aac_softc {int flags; int /*<<< orphan*/  aac_io_lock; struct aac_command* aac_commands; } ;
struct TYPE_2__ {int /*<<< orphan*/  XferState; } ;
struct aac_fib {scalar_t__ data; TYPE_1__ Header; } ;
struct aac_command {int /*<<< orphan*/  (* cm_complete ) (struct aac_command*) ;int /*<<< orphan*/  cm_flags; struct aac_fib* cm_fib; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AAC_CMD_COMPLETED ; 
 int /*<<< orphan*/  AAC_DB_RESPONSE_READY ; 
 int AAC_ERROR_NORMAL ; 
 int /*<<< orphan*/  AAC_FIBSTATE_DONEADAP ; 
 int FUNC1 (struct aac_softc*) ; 
 int FUNC2 (struct aac_softc*,int) ; 
 int AAC_QUEUE_FRZN ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*,int) ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  M_AACBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (struct aac_softc*,struct aac_fib*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC6 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_fib*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_softc*,char*,char*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct aac_command*) ; 
 int /*<<< orphan*/  FUNC14 (struct aac_command*) ; 

void
FUNC15(void *arg)
{
	struct aac_softc *sc;
	u_int32_t index, fast;
	struct aac_command *cm;
	struct aac_fib *fib;
	int i;

	sc = (struct aac_softc *)arg;

	FUNC9(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	FUNC11(&sc->aac_io_lock);
	while (1) {
		index = FUNC1(sc);
		if (index == 0xffffffff)
			index = FUNC1(sc);
		if (index == 0xffffffff)
			break;
		if (index & 2) {
			if (index == 0xfffffffe) {
				/* XXX This means that the controller wants
				 * more work.  Ignore it for now.
				 */
				continue;
			}
			/* AIF */
			fib = (struct aac_fib *)FUNC10(sizeof *fib, M_AACBUF,
				   M_NOWAIT | M_ZERO);
			if (fib == NULL) {
				/* If we're really this short on memory,
				 * hopefully breaking out of the handler will
				 * allow something to get freed.  This
				 * actually sucks a whole lot.
				 */
				break;
			}
			index &= ~2;
			for (i = 0; i < sizeof(struct aac_fib)/4; ++i)
				((u_int32_t *)fib)[i] = FUNC2(sc, index + i*4);
			FUNC4(sc, fib);
			FUNC8(fib, M_AACBUF);

			/*
			 * AIF memory is owned by the adapter, so let it
			 * know that we are done with it.
			 */
			FUNC3(sc, index);
			FUNC0(sc, AAC_DB_RESPONSE_READY);
		} else {
			fast = index & 1;
			cm = sc->aac_commands + (index >> 2);
			fib = cm->cm_fib;
			if (fast) {
				fib->Header.XferState |= AAC_FIBSTATE_DONEADAP;
				*((u_int32_t *)(fib->data)) = AAC_ERROR_NORMAL;
			}
			FUNC5(cm);
 			FUNC7(cm);
			cm->cm_flags |= AAC_CMD_COMPLETED;

			/* is there a completion handler? */
			if (cm->cm_complete != NULL) {
				cm->cm_complete(cm);
			} else {
				/* assume that someone is sleeping on this
				 * command
				 */
				FUNC14(cm);
			}
			sc->flags &= ~AAC_QUEUE_FRZN;
		}
	}
	/* see if we can start some more I/O */
	if ((sc->flags & AAC_QUEUE_FRZN) == 0)
		FUNC6(sc);

	FUNC12(&sc->aac_io_lock);
}