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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNC_UART_MODEM_STAT_REG ; 
 int CDNC_UART_MODEM_STAT_REG_CTS ; 
 int CDNC_UART_MODEM_STAT_REG_DCD ; 
 int CDNC_UART_MODEM_STAT_REG_DSR ; 
 int CDNC_UART_MODEM_STAT_REG_RI ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SER_CTS ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DCTS ; 
 int /*<<< orphan*/  SER_DDCD ; 
 int /*<<< orphan*/  SER_DDSR ; 
 int /*<<< orphan*/  SER_DRI ; 
 int /*<<< orphan*/  SER_DSR ; 
 int SER_MASK_DELTA ; 
 int /*<<< orphan*/  SER_RI ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	uint32_t new, old, sig;
	uint8_t modem_status;

	do {
		old = sc->sc_hwsig;
		sig = old;
		FUNC3(sc->sc_hwmtx);
		modem_status = FUNC0(bas, CDNC_UART_MODEM_STAT_REG);
		FUNC4(sc->sc_hwmtx);
		FUNC1(modem_status & CDNC_UART_MODEM_STAT_REG_DSR,
		       sig, SER_DSR, SER_DDSR);
		FUNC1(modem_status & CDNC_UART_MODEM_STAT_REG_CTS,
		       sig, SER_CTS, SER_DCTS);
		FUNC1(modem_status & CDNC_UART_MODEM_STAT_REG_DCD,
		       sig, SER_DCD, SER_DDCD);
		FUNC1(modem_status & CDNC_UART_MODEM_STAT_REG_RI,
		       sig, SER_RI,  SER_DRI);
		new = sig & ~SER_MASK_DELTA;
	} while (!FUNC2(&sc->sc_hwsig, old, new));
	return (sig);
}