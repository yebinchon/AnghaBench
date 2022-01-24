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
struct uart_softc {int sc_hwsig; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNC_UART_MODEM_CTRL_REG ; 
 int CDNC_UART_MODEM_CTRL_REG_DTR ; 
 int CDNC_UART_MODEM_CTRL_REG_RTS ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int SER_DDTR ; 
 int SER_DRTS ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc, int sig)
{
	struct uart_bas *bas = &sc->sc_bas;
	uint32_t new, old, modem_ctrl;

	do {
		old = sc->sc_hwsig;
		new = old;
		if (sig & SER_DDTR) {
			FUNC1(sig & SER_DTR, new, SER_DTR, SER_DDTR);
		}
		if (sig & SER_DRTS) {
			FUNC1(sig & SER_RTS, new, SER_RTS, SER_DRTS);
		}
	} while (!FUNC3(&sc->sc_hwsig, old, new));
	FUNC4(sc->sc_hwmtx);
	modem_ctrl = FUNC0(bas, CDNC_UART_MODEM_CTRL_REG) &
		~(CDNC_UART_MODEM_CTRL_REG_DTR | CDNC_UART_MODEM_CTRL_REG_RTS);
	if ((new & SER_DTR) != 0)
		modem_ctrl |= CDNC_UART_MODEM_CTRL_REG_DTR;
	if ((new & SER_RTS) != 0)
		modem_ctrl |= CDNC_UART_MODEM_CTRL_REG_RTS;
	FUNC2(bas, CDNC_UART_MODEM_CTRL_REG, modem_ctrl);

	FUNC5(sc->sc_hwmtx);
	return (0);
}