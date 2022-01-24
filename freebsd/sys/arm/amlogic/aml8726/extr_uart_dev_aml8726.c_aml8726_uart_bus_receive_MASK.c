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
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_rxbuf; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int AML_UART_CONTROL_CLR_ERR ; 
 int /*<<< orphan*/  AML_UART_CONTROL_REG ; 
 int /*<<< orphan*/  AML_UART_RFIFO_REG ; 
 int AML_UART_STATUS_FRAME_ERR ; 
 int AML_UART_STATUS_PARITY_ERR ; 
 int /*<<< orphan*/  AML_UART_STATUS_REG ; 
 int AML_UART_STATUS_RX_FIFO_EMPTY ; 
 int UART_STAT_FRAMERR ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int UART_STAT_PARERR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int xc;
	uint32_t sr;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);

	sr = FUNC1(bas, AML_UART_STATUS_REG);
	while ((sr & AML_UART_STATUS_RX_FIFO_EMPTY) == 0) {
		if (FUNC3(sc)) {
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}
		xc = FUNC1(bas, AML_UART_RFIFO_REG) & 0xff;
		if (sr & AML_UART_STATUS_FRAME_ERR)
			xc |= UART_STAT_FRAMERR;
		if (sr & AML_UART_STATUS_PARITY_ERR)
			xc |= UART_STAT_PARERR;
		FUNC4(sc, xc);
		sr = FUNC1(bas, AML_UART_STATUS_REG);
	}
	/* Discard everything left in the RX FIFO. */
	while ((sr & AML_UART_STATUS_RX_FIFO_EMPTY) == 0) {
		(void)FUNC1(bas, AML_UART_RFIFO_REG);
		sr = FUNC1(bas, AML_UART_STATUS_REG);
	}
	/* Reset error bits */
	if ((sr & (AML_UART_STATUS_FRAME_ERR | AML_UART_STATUS_PARITY_ERR)) != 0) {
		FUNC5(bas, AML_UART_CONTROL_REG,
		    (FUNC1(bas, AML_UART_CONTROL_REG) |
		    AML_UART_CONTROL_CLR_ERR));
		FUNC0(bas);
		FUNC5(bas, AML_UART_CONTROL_REG,
		    (FUNC1(bas, AML_UART_CONTROL_REG) &
		    ~AML_UART_CONTROL_CLR_ERR));
		FUNC0(bas);
	}

	FUNC6(sc->sc_hwmtx);

	return (0);
}