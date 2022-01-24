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
typedef  int u_int16_t ;
struct aac_softc {int /*<<< orphan*/  aifthread; TYPE_1__* aac_common; int /*<<< orphan*/  aac_task_complete; } ;
struct TYPE_2__ {int* ac_printf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int) ; 
 int AAC_DB_COMMAND_READY ; 
 int AAC_DB_PRINTF ; 
 int AAC_DB_RESPONSE_READY ; 
 int FUNC1 (struct aac_softc*) ; 
 int FILTER_HANDLED ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_fast ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(void *arg)
{
	struct aac_softc *sc;
	u_int16_t reason;

	sc = (struct aac_softc *)arg;

	FUNC2(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	/*
	 * Read the status register directly.  This is faster than taking the
	 * driver lock and reading the queues directly.  It also saves having
	 * to turn parts of the driver lock into a spin mutex, which would be
	 * ugly.
	 */
	reason = FUNC1(sc);
	FUNC0(sc, reason);

	/* handle completion processing */
	if (reason & AAC_DB_RESPONSE_READY)
		FUNC3(taskqueue_fast, &sc->aac_task_complete);

	/* controller wants to talk to us */
	if (reason & (AAC_DB_PRINTF | AAC_DB_COMMAND_READY)) {
		/*
		 * XXX Make sure that we don't get fooled by strange messages
		 * that start with a NULL.
		 */
		if ((reason & AAC_DB_PRINTF) &&
			(sc->aac_common->ac_printf[0] == 0))
			sc->aac_common->ac_printf[0] = 32;

		/*
		 * This might miss doing the actual wakeup.  However, the
		 * msleep that this is waking up has a timeout, so it will
		 * wake up eventually.  AIFs and printfs are low enough
		 * priority that they can handle hanging out for a few seconds
		 * if needed.
		 */
		FUNC4(sc->aifthread);
	}
	return (FILTER_HANDLED);
}