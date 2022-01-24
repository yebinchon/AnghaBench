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
typedef  int /*<<< orphan*/  uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_UART_CONTROL_REG ; 
 int /*<<< orphan*/  AML_UART_CONTROL_RX_INT_EN ; 
 int /*<<< orphan*/  AML_UART_MISC_RECV_IRQ_CNT_MASK ; 
 int /*<<< orphan*/  AML_UART_MISC_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	uint32_t cr;
	uint32_t mr;

	/*
	 * The RX FIFO level being set indicates that the device
	 * is currently attached meaning the receive interrupt
	 * should be enabled.
	 */

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);

	mr = FUNC1(bas, AML_UART_MISC_REG);
	mr &= AML_UART_MISC_RECV_IRQ_CNT_MASK;

	if (mr != 0) {
		cr = FUNC1(bas, AML_UART_CONTROL_REG);
		cr |= AML_UART_CONTROL_RX_INT_EN;
		FUNC3(bas, AML_UART_CONTROL_REG, cr);
		FUNC0(bas);
	}

	FUNC4(sc->sc_hwmtx);
}