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
struct uart_softc {struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_devinfo {int /*<<< orphan*/  parity; int /*<<< orphan*/  stopbits; int /*<<< orphan*/  databits; int /*<<< orphan*/  baudrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNC_UART_IEN_REG ; 
 int CDNC_UART_INT_DMSI ; 
 int CDNC_UART_INT_RXOVR ; 
 int CDNC_UART_INT_RXTMOUT ; 
 int CDNC_UART_INT_RXTRIG ; 
 int CDNC_UART_INT_TXOVR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	struct uart_devinfo *di;

	if (sc->sc_sysdev != NULL) {
		di = sc->sc_sysdev;
		(void)FUNC3(bas, di->baudrate, di->databits,
					   di->stopbits, di->parity);
	} else
		FUNC2(bas);

	(void)FUNC1(sc);

	/* Enable interrupts. */
	FUNC0(bas, CDNC_UART_IEN_REG,
	    CDNC_UART_INT_RXTRIG | CDNC_UART_INT_RXTMOUT |
	    CDNC_UART_INT_TXOVR | CDNC_UART_INT_RXOVR |
	    CDNC_UART_INT_DMSI);

	return (0);
}