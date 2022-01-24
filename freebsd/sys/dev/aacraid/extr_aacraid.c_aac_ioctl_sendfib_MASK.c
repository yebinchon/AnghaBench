#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aac_softc {int aac_max_fib_size; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_dev; } ;
struct aac_fib_header {int dummy; } ;
struct aac_event {struct aac_command** ev_arg; int /*<<< orphan*/  ev_callback; int /*<<< orphan*/  ev_type; } ;
struct aac_command {TYPE_2__* cm_fib; scalar_t__ cm_datalen; int /*<<< orphan*/  cm_timestamp; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {int Size; } ;
struct TYPE_5__ {TYPE_1__ Header; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_EVENT_CMFREE ; 
 int EBUSY ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  M_AACRAIDBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  aac_ioctl_event ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,struct aac_event*) ; 
 scalar_t__ FUNC1 (struct aac_softc*,struct aac_command**) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_command*) ; 
 int FUNC3 (struct aac_command*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_softc*,char*,char*) ; 
 struct aac_event* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  time_uptime ; 

__attribute__((used)) static int
FUNC12(struct aac_softc *sc, caddr_t ufib)
{
	struct aac_command *cm;
	int size, error;

	FUNC7(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	cm = NULL;

	/*
	 * Get a command
	 */
	FUNC10(&sc->aac_io_lock);
	if (FUNC1(sc, &cm)) {
		struct aac_event *event;

		event = FUNC8(sizeof(struct aac_event), M_AACRAIDBUF,
		    M_NOWAIT | M_ZERO);
		if (event == NULL) {
			error = EBUSY;
			FUNC11(&sc->aac_io_lock);
			goto out;
		}
		event->ev_type = AAC_EVENT_CMFREE;
		event->ev_callback = aac_ioctl_event;
		event->ev_arg = &cm;
		FUNC0(sc, event);
		FUNC9(cm, &sc->aac_io_lock, 0, "aacraid_ctlsfib", 0);
	}
	FUNC11(&sc->aac_io_lock);

	/*
	 * Fetch the FIB header, then re-copy to get data as well.
	 */
	if ((error = FUNC4(ufib, cm->cm_fib,
			    sizeof(struct aac_fib_header))) != 0)
		goto out;
	size = cm->cm_fib->Header.Size + sizeof(struct aac_fib_header);
	if (size > sc->aac_max_fib_size) {
		FUNC6(sc->aac_dev, "incoming FIB oversized (%d > %d)\n",
			      size, sc->aac_max_fib_size);
		size = sc->aac_max_fib_size;
	}
	if ((error = FUNC4(ufib, cm->cm_fib, size)) != 0)
		goto out;
	cm->cm_fib->Header.Size = size;
	cm->cm_timestamp = time_uptime;
	cm->cm_datalen = 0;

	/*
	 * Pass the FIB to the controller, wait for it to complete.
	 */
	FUNC10(&sc->aac_io_lock);
	error = FUNC3(cm);
	FUNC11(&sc->aac_io_lock);
	if (error != 0) {
		FUNC6(sc->aac_dev,
			      "aacraid_wait_command return %d\n", error);
		goto out;
	}

	/*
	 * Copy the FIB and data back out to the caller.
	 */
	size = cm->cm_fib->Header.Size;
	if (size > sc->aac_max_fib_size) {
		FUNC6(sc->aac_dev, "outbound FIB oversized (%d > %d)\n",
			      size, sc->aac_max_fib_size);
		size = sc->aac_max_fib_size;
	}
	error = FUNC5(cm->cm_fib, ufib, size);

out:
	if (cm != NULL) {
		FUNC10(&sc->aac_io_lock);
		FUNC2(cm);
		FUNC11(&sc->aac_io_lock);
	}
	return(error);
}