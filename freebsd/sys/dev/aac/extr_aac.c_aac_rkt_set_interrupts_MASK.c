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
struct aac_softc {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_DB_INTERRUPTS ; 
 int /*<<< orphan*/  AAC_DB_INT_NEW_COMM ; 
 int AAC_FLAGS_NEW_COMM ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AAC_RKT_OIMR ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct aac_softc *sc, int enable)
{
	FUNC1(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "%sable interrupts", enable ? "en" : "dis");

	if (enable) {
		if (sc->flags & AAC_FLAGS_NEW_COMM)
			FUNC0(sc, AAC_RKT_OIMR, ~AAC_DB_INT_NEW_COMM);
		else
			FUNC0(sc, AAC_RKT_OIMR, ~AAC_DB_INTERRUPTS);
	} else {
		FUNC0(sc, AAC_RKT_OIMR, ~0);
	}
}