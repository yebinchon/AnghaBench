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
typedef  int uint16_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_BDH ; 
 int UART_BDH_SBR ; 
 int /*<<< orphan*/  UART_BDL ; 
 int /*<<< orphan*/  UART_C1 ; 
 int /*<<< orphan*/  UART_C2 ; 
 int UART_C2_RE ; 
 int UART_C2_TE ; 
 int /*<<< orphan*/  UART_C4 ; 
 int UART_C4_BRFA ; 
 int /*<<< orphan*/  UART_MODEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct uart_softc *sc, int clkspeed, int baud)
{
	struct uart_bas *bas;
	int sbr;
	int brfa;
	int reg;

	bas = &sc->sc_bas;
	if (!bas) {
		FUNC0("Error: can't reconfigure bas\n");
		return;
	}

	FUNC2(bas, UART_MODEM, 0x00);

	/*
	 * Disable transmitter and receiver
	 * for a while.
	 */
	reg = FUNC1(bas, UART_C2);
	reg &= ~(UART_C2_RE | UART_C2_TE);
	FUNC2(bas, UART_C2, 0x00);

	FUNC2(bas, UART_C1, 0x00);

	sbr = (uint16_t) (clkspeed / (baud * 16));
	brfa = (clkspeed / baud) - (sbr * 16);

	reg = FUNC1(bas, UART_BDH);
	reg &= ~UART_BDH_SBR;
	reg |= ((sbr & 0x1f00) >> 8);
	FUNC2(bas, UART_BDH, reg);

	reg = sbr & 0x00ff;
	FUNC2(bas, UART_BDL, reg);

	reg = FUNC1(bas, UART_C4);
	reg &= ~UART_C4_BRFA;
	reg |= (brfa & UART_C4_BRFA);
	FUNC2(bas, UART_C4, reg);

	reg = FUNC1(bas, UART_C2);
	reg |= (UART_C2_RE | UART_C2_TE);
	FUNC2(bas, UART_C2, reg);

}