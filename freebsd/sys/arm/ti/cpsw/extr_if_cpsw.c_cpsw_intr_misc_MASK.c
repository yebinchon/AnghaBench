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
typedef  int uint32_t ;
struct cpsw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_CPDMA_CPDMA_EOI_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_softc*,char*) ; 
 int CPSW_WR_C_MISC_EVNT_PEND ; 
 int CPSW_WR_C_MISC_HOST_PEND ; 
 int CPSW_WR_C_MISC_MDIOLINK ; 
 int CPSW_WR_C_MISC_MDIOUSER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int CPSW_WR_C_MISC_STAT_PEND ; 
 int /*<<< orphan*/  MDIOLINKINTMASKED ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_softc*) ; 
 int FUNC3 (struct cpsw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpsw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct cpsw_softc *sc = arg;
	uint32_t stat = FUNC3(sc, FUNC1(0));

	if (stat & CPSW_WR_C_MISC_EVNT_PEND)
		FUNC0(sc, ("Time sync event interrupt unimplemented"));
	if (stat & CPSW_WR_C_MISC_STAT_PEND)
		FUNC4(sc);
	if (stat & CPSW_WR_C_MISC_HOST_PEND)
		FUNC2(sc);
	if (stat & CPSW_WR_C_MISC_MDIOLINK) {
		FUNC5(sc, MDIOLINKINTMASKED,
		    FUNC3(sc, MDIOLINKINTMASKED));
	}
	if (stat & CPSW_WR_C_MISC_MDIOUSER) {
		FUNC0(sc,
		    ("MDIO operation completed interrupt unimplemented"));
	}
	FUNC5(sc, CPSW_CPDMA_CPDMA_EOI_VECTOR, 3);
}