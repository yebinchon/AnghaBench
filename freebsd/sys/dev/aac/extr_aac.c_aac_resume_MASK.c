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
struct aac_softc {int /*<<< orphan*/  aac_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_STATE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*) ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 struct aac_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_softc*,char*,char*) ; 

int
FUNC3(device_t dev)
{
	struct aac_softc *sc;

	sc = FUNC1(dev);

	FUNC2(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	sc->aac_state &= ~AAC_STATE_SUSPEND;
	FUNC0(sc);
	return(0);
}