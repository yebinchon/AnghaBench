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
typedef  scalar_t__ u_int32_t ;
struct aac_softc {int /*<<< orphan*/  aac_ev_cmfree; int /*<<< orphan*/  aac_max_fib_size; } ;
struct aac_event {int /*<<< orphan*/  ev_arg; int /*<<< orphan*/  (* ev_callback ) (struct aac_softc*,struct aac_event*,int /*<<< orphan*/ ) ;} ;
struct aac_command {TYPE_2__* cm_fib; scalar_t__ cm_fibphys; struct aac_softc* cm_sc; int /*<<< orphan*/  cm_queue; int /*<<< orphan*/ * cm_private; int /*<<< orphan*/ * cm_complete; scalar_t__ cm_flags; int /*<<< orphan*/ * cm_sgtable; scalar_t__ cm_datalen; } ;
struct TYPE_3__ {scalar_t__ SenderData; scalar_t__ ReceiverFibAddress; int /*<<< orphan*/  SenderSize; scalar_t__ Flags; int /*<<< orphan*/  StructType; int /*<<< orphan*/  XferState; } ;
struct TYPE_4__ {TYPE_1__ Header; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_ADAP_NORM_CMD_QUEUE ; 
 int /*<<< orphan*/  AAC_FIBSTATE_EMPTY ; 
 int /*<<< orphan*/  AAC_FIBTYPE_TFIB ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 struct aac_event* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct aac_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_command*) ; 
 int /*<<< orphan*/  ev_links ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_softc*,struct aac_event*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct aac_command *cm)
{
	struct aac_event *event;
	struct aac_softc *sc;

	sc = cm->cm_sc;
	FUNC3(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	/* (re)initialize the command/FIB */
	cm->cm_datalen = 0;
	cm->cm_sgtable = NULL;
	cm->cm_flags = 0;
	cm->cm_complete = NULL;
	cm->cm_private = NULL;
	cm->cm_queue = AAC_ADAP_NORM_CMD_QUEUE;
	cm->cm_fib->Header.XferState = AAC_FIBSTATE_EMPTY;
	cm->cm_fib->Header.StructType = AAC_FIBTYPE_TFIB;
	cm->cm_fib->Header.Flags = 0;
	cm->cm_fib->Header.SenderSize = cm->cm_sc->aac_max_fib_size;

	/*
	 * These are duplicated in aac_start to cover the case where an
	 * intermediate stage may have destroyed them.  They're left
	 * initialized here for debugging purposes only.
	 */
	cm->cm_fib->Header.ReceiverFibAddress = (u_int32_t)cm->cm_fibphys;
	cm->cm_fib->Header.SenderData = 0;

	FUNC2(cm);

	if ((event = FUNC0(&sc->aac_ev_cmfree)) != NULL) {
		FUNC1(&sc->aac_ev_cmfree, event, ev_links);
		event->ev_callback(sc, event, event->ev_arg);
	}
}