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
struct aac_softc {int aif_pending; } ;
struct TYPE_2__ {int Size; int XferState; int Handle; int /*<<< orphan*/  Command; } ;
struct aac_fib {scalar_t__ data; TYPE_1__ Header; } ;
struct aac_command {struct aac_fib* cm_fib; } ;
struct aac_aif_command {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int AAC_FIBSTATE_ASYNC ; 
 int AAC_FIBSTATE_EMPTY ; 
 int AAC_FIBSTATE_FROMHOST ; 
 int AAC_FIBSTATE_HOSTOWNED ; 
 int AAC_FIBSTATE_INITIALISED ; 
 int AAC_FIBSTATE_NORM ; 
 int AAC_FIBSTATE_REXPECTED ; 
 int /*<<< orphan*/  AifReqEvent ; 
 int /*<<< orphan*/  AifRequest ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 scalar_t__ FUNC0 (struct aac_softc*,struct aac_command**) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,char*,char*) ; 

__attribute__((used)) static void
FUNC3(struct aac_softc *sc)
{
	struct aac_command *cm;
	struct aac_fib *fib;

	FUNC2(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	if (FUNC0(sc, &cm)) {
		sc->aif_pending = 1;
		return;
	}
	sc->aif_pending = 0;
    
	/* build the FIB */
	fib = cm->cm_fib;
	fib->Header.Size = sizeof(struct aac_fib);
	fib->Header.XferState =
        AAC_FIBSTATE_HOSTOWNED   |
        AAC_FIBSTATE_INITIALISED |
        AAC_FIBSTATE_EMPTY	 |
        AAC_FIBSTATE_FROMHOST	 |
        AAC_FIBSTATE_REXPECTED   |
        AAC_FIBSTATE_NORM	 |
        AAC_FIBSTATE_ASYNC;
	/* set AIF marker */
	fib->Header.Handle = 0x00800000;
	fib->Header.Command = AifRequest;
	((struct aac_aif_command *)fib->data)->command = AifReqEvent;

	FUNC1(cm, NULL, 0, 0);
}