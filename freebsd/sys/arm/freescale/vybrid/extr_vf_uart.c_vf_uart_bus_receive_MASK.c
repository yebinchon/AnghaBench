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
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_rxbuf; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_C2 ; 
 int UART_C2_RIE ; 
 int /*<<< orphan*/  UART_D ; 
 int /*<<< orphan*/  UART_S1 ; 
 int UART_S1_RDRF ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int reg;
	int c;

	bas = &sc->sc_bas;
	FUNC1(sc->sc_hwmtx);

	/* Read FIFO */
	while (FUNC0(bas, UART_S1) & UART_S1_RDRF) {
		if (FUNC2(sc)) {
		/* No space left in input buffer */
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}

		c = FUNC0(bas, UART_D);
		FUNC3(sc, c);
	}

	/* Reenable Data Ready interrupt */
	reg = FUNC0(bas, UART_C2);
	reg |= (UART_C2_RIE);
	FUNC4(bas, UART_C2, reg);

	FUNC5(sc->sc_hwmtx);
	return (0);
}