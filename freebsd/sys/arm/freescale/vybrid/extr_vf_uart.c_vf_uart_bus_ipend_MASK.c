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
struct uart_softc {scalar_t__ sc_txbusy; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int SER_INT_BREAK ; 
 int SER_INT_RXREADY ; 
 int SER_INT_TXIDLE ; 
 int /*<<< orphan*/  UART_C2 ; 
 int UART_C2_RIE ; 
 int UART_C2_TIE ; 
 int /*<<< orphan*/  UART_S1 ; 
 int UART_S1_RDRF ; 
 int UART_S1_TDRE ; 
 int /*<<< orphan*/  UART_S2 ; 
 int UART_S2_LBKDIF ; 
 int /*<<< orphan*/  UART_SFIFO ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ipend;
	uint32_t usr1, usr2;
	int reg;
	int sfifo;

	bas = &sc->sc_bas;
	ipend = 0;

	FUNC1(sc->sc_hwmtx);

	usr1 = FUNC0(bas, UART_S1);
	usr2 = FUNC0(bas, UART_S2);
	sfifo = FUNC0(bas, UART_SFIFO);

	/* ack usr2 */
	FUNC2(bas, UART_S2, usr2);

	if (usr1 & UART_S1_TDRE) {
		reg = FUNC0(bas, UART_C2);
		reg &= ~(UART_C2_TIE);
		FUNC2(bas, UART_C2, reg);

		if (sc->sc_txbusy != 0) {
			ipend |= SER_INT_TXIDLE;
		}
	}

	if (usr1 & UART_S1_RDRF) {
		reg = FUNC0(bas, UART_C2);
		reg &= ~(UART_C2_RIE);
		FUNC2(bas, UART_C2, reg);

		ipend |= SER_INT_RXREADY;
	}

	if (usr2 & UART_S2_LBKDIF) {
		ipend |= SER_INT_BREAK;
	}

	FUNC3(sc->sc_hwmtx);

	return (ipend);
}