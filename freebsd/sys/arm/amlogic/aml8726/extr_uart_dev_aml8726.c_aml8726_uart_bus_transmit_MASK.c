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
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_UART_CONTROL_REG ; 
 int AML_UART_CONTROL_TX_INT_EN ; 
 int /*<<< orphan*/  AML_UART_STATUS_REG ; 
 int AML_UART_STATUS_TX_FIFO_EMPTY ; 
 int /*<<< orphan*/  AML_UART_WFIFO_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int i;
	uint32_t cr;

	bas = &sc->sc_bas;
	FUNC3(sc->sc_hwmtx);

	/*
	 * Wait for sufficient space since aml8726_uart_putc
	 * may have been called after SER_INT_TXIDLE occurred.
	 */
	while ((FUNC2(bas, AML_UART_STATUS_REG) &
	    AML_UART_STATUS_TX_FIFO_EMPTY) == 0)
		FUNC0();

	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC4(bas, AML_UART_WFIFO_REG, sc->sc_txbuf[i]);
		FUNC1(bas);
	}

	sc->sc_txbusy = 1;

	cr = FUNC2(bas, AML_UART_CONTROL_REG);
	cr |= AML_UART_CONTROL_TX_INT_EN;
	FUNC4(bas, AML_UART_CONTROL_REG, cr);
	FUNC1(bas);

	FUNC5(sc->sc_hwmtx);

	return (0);
}