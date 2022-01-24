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
struct awg_softc {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct awg_softc*) ; 
 int /*<<< orphan*/  EMAC_INT_STA ; 
 int FUNC2 (struct awg_softc*,int /*<<< orphan*/ ) ; 
 int RX_INT ; 
 int TX_BUF_UA_INT ; 
 int TX_INT ; 
 int /*<<< orphan*/  FUNC3 (struct awg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct awg_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct awg_softc *sc;
	uint32_t val;

	sc = arg;

	FUNC0(sc);
	val = FUNC2(sc, EMAC_INT_STA);
	FUNC3(sc, EMAC_INT_STA, val);

	if (val & RX_INT)
		FUNC4(sc);

	if (val & TX_INT)
		FUNC6(sc);

	if (val & (TX_INT | TX_BUF_UA_INT)) {
		if (!FUNC7(sc->ifp))
			FUNC5(sc);
	}

	FUNC1(sc);
}