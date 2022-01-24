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
struct aac_softc {int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  aac_state; } ;
struct aac_fib {scalar_t__* data; } ;
struct aac_close_command {int ContainerId; int /*<<< orphan*/  Command; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_FIBSTATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*) ; 
 int /*<<< orphan*/  AAC_STATE_SUSPEND ; 
 int /*<<< orphan*/  ContainerCommand ; 
 int /*<<< orphan*/  FsaHostShutdown ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  VM_CloseAll ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,struct aac_fib**) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*) ; 
 scalar_t__ FUNC3 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aac_fib*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_close_command*,int) ; 
 struct aac_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(device_t dev)
{
	struct aac_softc *sc;
	struct aac_fib *fib;
	struct aac_close_command *cc;

	sc = FUNC5(dev);
	FUNC7(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	sc->aac_state |= AAC_STATE_SUSPEND;

	/*
	 * Send a Container shutdown followed by a HostShutdown FIB to the
	 * controller to convince it that we don't want to talk to it anymore.
	 * We've been closed and all I/O completed already
	 */
	FUNC6(sc->aac_dev, "shutting down controller...");

	FUNC8(&sc->aac_io_lock);
	FUNC1(sc, &fib);
	cc = (struct aac_close_command *)&fib->data[0];

	FUNC4(cc, sizeof(struct aac_close_command));
	cc->Command = VM_CloseAll;
	cc->ContainerId = 0xffffffff;
	if (FUNC3(sc, ContainerCommand, 0, fib,
	    sizeof(struct aac_close_command)))
		FUNC10("FAILED.\n");
	else
		FUNC10("done\n");
#if 0
	else {
		fib->data[0] = 0;
		/*
		 * XXX Issuing this command to the controller makes it shut down
		 * but also keeps it from coming back up without a reset of the
		 * PCI bus.  This is not desirable if you are just unloading the
		 * driver module with the intent to reload it later.
		 */
		if (aac_sync_fib(sc, FsaHostShutdown, AAC_FIBSTATE_SHUTDOWN,
		    fib, 1)) {
			printf("FAILED.\n");
		} else {
			printf("done.\n");
		}
	}
#endif

	FUNC0(sc);
	FUNC2(sc);
	FUNC9(&sc->aac_io_lock);

	return(0);
}