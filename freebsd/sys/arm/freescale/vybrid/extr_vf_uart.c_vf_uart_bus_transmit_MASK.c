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
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_C2 ; 
 int UART_C2_TIE ; 
 int /*<<< orphan*/  UART_D ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	int i;
	int reg;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);

	/* Fill TX FIFO */
	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC3(bas, UART_D, sc->sc_txbuf[i] & 0xff);
		FUNC0(&sc->sc_bas);
	}

	sc->sc_txbusy = 1;

	/* Call me when ready */
	reg = FUNC1(bas, UART_C2);
	reg |= (UART_C2_TIE);
	FUNC3(bas, UART_C2, reg);

	FUNC4(sc->sc_hwmtx);

	return (0);
}