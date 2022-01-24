#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct aac_softc {TYPE_4__* aac_queues; TYPE_3__** aac_qentries; } ;
struct aac_command {TYPE_2__* cm_fib; } ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ notify; } ;
struct TYPE_9__ {scalar_t__** qt_qindex; } ;
struct TYPE_8__ {scalar_t__ aq_fib_addr; scalar_t__ aq_fib_size; } ;
struct TYPE_6__ {scalar_t__ Size; scalar_t__ ReceiverFibAddress; } ;
struct TYPE_7__ {TYPE_1__ Header; } ;

/* Variables and functions */
 size_t AAC_CONSUMER_INDEX ; 
 size_t AAC_PRODUCER_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,scalar_t__) ; 
 int EBUSY ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC1 (struct aac_command*) ; 
 TYPE_5__* aac_qinfo ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,char*,char*) ; 

__attribute__((used)) static int
FUNC3(struct aac_softc *sc, int queue, struct aac_command *cm)
{
	u_int32_t pi, ci;
	int error;
	u_int32_t fib_size;
	u_int32_t fib_addr;

	FUNC2(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	fib_size = cm->cm_fib->Header.Size;
	fib_addr = cm->cm_fib->Header.ReceiverFibAddress;

	/* get the producer/consumer indices */
	pi = sc->aac_queues->qt_qindex[queue][AAC_PRODUCER_INDEX];
	ci = sc->aac_queues->qt_qindex[queue][AAC_CONSUMER_INDEX];

	/* wrap the queue? */
	if (pi >= aac_qinfo[queue].size)
		pi = 0;

	/* check for queue full */
	if ((pi + 1) == ci) {
		error = EBUSY;
		goto out;
	}

	/*
	 * To avoid a race with its completion interrupt, place this command on
	 * the busy queue prior to advertising it to the controller.
	 */
	FUNC1(cm);

	/* populate queue entry */
	(sc->aac_qentries[queue] + pi)->aq_fib_size = fib_size;
	(sc->aac_qentries[queue] + pi)->aq_fib_addr = fib_addr;

	/* update producer index */
	sc->aac_queues->qt_qindex[queue][AAC_PRODUCER_INDEX] = pi + 1;

	/* notify the adapter if we know how */
	if (aac_qinfo[queue].notify != 0)
		FUNC0(sc, aac_qinfo[queue].notify);

	error = 0;

out:
	return(error);
}