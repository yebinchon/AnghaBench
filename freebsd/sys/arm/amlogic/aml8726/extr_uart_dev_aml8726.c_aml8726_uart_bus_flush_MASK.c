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
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_UART_CONTROL_REG ; 
 int AML_UART_CONTROL_RX_RST ; 
 int AML_UART_CONTROL_TX_RST ; 
 int UART_FLUSH_RECEIVER ; 
 int UART_FLUSH_TRANSMITTER ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc, int what)
{
	struct uart_bas *bas;
	uint32_t cr;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);

	cr = FUNC1(bas, AML_UART_CONTROL_REG);
	if (what & UART_FLUSH_TRANSMITTER)
		cr |= AML_UART_CONTROL_TX_RST;
	if (what & UART_FLUSH_RECEIVER)
		cr |= AML_UART_CONTROL_RX_RST;
	FUNC3(bas, AML_UART_CONTROL_REG, cr);
	FUNC0(bas);

	/* Ensure the reset bits are clear. */
	cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
	FUNC3(bas, AML_UART_CONTROL_REG, cr);
	FUNC0(bas);

	FUNC4(sc->sc_hwmtx);

	return (0);
}