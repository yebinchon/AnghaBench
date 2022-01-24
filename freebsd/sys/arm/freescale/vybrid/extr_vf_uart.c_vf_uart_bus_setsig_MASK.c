#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_bas {int dummy; } ;
struct uart_softc {TYPE_1__* sc_sysdev; struct uart_bas sc_bas; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_C2 ; 
 int UART_C2_RIE ; 
 scalar_t__ UART_DEV_CONSOLE ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct uart_softc *sc, int sig)
{
	struct uart_bas *bas;
	int reg;

	/* TODO: implement (?) */

	/* XXX workaround to have working console on mount prompt */
	/* Enable RX interrupt */
	bas = &sc->sc_bas;
	if (sc->sc_sysdev != NULL && sc->sc_sysdev->type == UART_DEV_CONSOLE) {
		reg = FUNC0(bas, UART_C2);
		reg |= (UART_C2_RIE);
		FUNC1(bas, UART_C2, reg);
	}

	return (0);
}