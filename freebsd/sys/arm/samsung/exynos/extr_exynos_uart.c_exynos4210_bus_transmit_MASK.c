#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct uart_softc {int sc_txdatasz; int sc_txbusy; TYPE_1__ sc_bas; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_txbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSCOM_UINTM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	int i;
	int reg;

	FUNC4(sc->sc_hwmtx);

	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC2(&sc->sc_bas, sc->sc_txbuf[i]);
		FUNC3(&sc->sc_bas);
	}

	sc->sc_txbusy = 1;

	FUNC5(sc->sc_hwmtx);

	/* unmask TX interrupt */
	reg = FUNC0(sc->sc_bas.bst, sc->sc_bas.bsh, SSCOM_UINTM);
	reg &= ~(1 << 2);
	FUNC1(sc->sc_bas.bst, sc->sc_bas.bsh, SSCOM_UINTM, reg);

	return (0);
}