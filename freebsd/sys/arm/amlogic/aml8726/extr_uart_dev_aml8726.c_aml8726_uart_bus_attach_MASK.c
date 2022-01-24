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
typedef  int uint32_t ;
struct uart_bas {scalar_t__ rclk; } ;
struct uart_softc {TYPE_1__* sc_sysdev; int /*<<< orphan*/  sc_dev; struct uart_bas sc_bas; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int AML_UART_CONTROL_CLR_ERR ; 
 int /*<<< orphan*/  AML_UART_CONTROL_REG ; 
 int AML_UART_CONTROL_RX_EN ; 
 int AML_UART_CONTROL_RX_INT_EN ; 
 int AML_UART_CONTROL_RX_RST ; 
 int AML_UART_CONTROL_TWO_WIRE_EN ; 
 int AML_UART_CONTROL_TX_EN ; 
 int AML_UART_CONTROL_TX_INT_EN ; 
 int AML_UART_CONTROL_TX_RST ; 
 int AML_UART_MISC_RECV_IRQ_CNT_MASK ; 
 int AML_UART_MISC_RECV_IRQ_CNT_SHIFT ; 
 int /*<<< orphan*/  AML_UART_MISC_REG ; 
 int AML_UART_MISC_XMIT_IRQ_CNT_MASK ; 
 int AML_UART_MISC_XMIT_IRQ_CNT_SHIFT ; 
 int ENXIO ; 
 scalar_t__ UART_DEV_CONSOLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*) ; 
 int FUNC5 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct uart_softc *sc)
{
	struct uart_bas *bas;
	uint32_t cr;
	uint32_t mr;

	bas = &sc->sc_bas;

	bas->rclk = FUNC0(FUNC3(sc->sc_dev));

	if (bas->rclk == 0) {
		FUNC2(sc->sc_dev, "missing clocks attribute in FDT\n");
		return (ENXIO);
	}

	cr = FUNC5(bas, AML_UART_CONTROL_REG);
	/* Disable all interrupt sources. */
	cr &= ~(AML_UART_CONTROL_TX_INT_EN | AML_UART_CONTROL_RX_INT_EN);
	/* Ensure the reset bits are clear. */
	cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);

	/*
	 * Reset the transmitter and receiver only if not acting as a
	 * console, otherwise it means that:
	 *
	 * 1) aml8726_uart_init was already called which did the reset
	 *
	 * 2) there may be console bytes sitting in the transmit fifo
	 */
	if (sc->sc_sysdev != NULL && sc->sc_sysdev->type == UART_DEV_CONSOLE)
		;
	else
		cr |= (AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);

	/* Default to two wire mode. */
	cr |= AML_UART_CONTROL_TWO_WIRE_EN;
	/* Enable the transmitter and receiver. */
	cr |= (AML_UART_CONTROL_TX_EN | AML_UART_CONTROL_RX_EN);
	/* Reset error bits. */
	cr |= AML_UART_CONTROL_CLR_ERR;
	FUNC6(bas, AML_UART_CONTROL_REG, cr);
	FUNC4(bas);

	/* Set FIFO levels for generating interrupts. */
	mr = FUNC5(bas, AML_UART_MISC_REG);
	mr &= ~AML_UART_MISC_XMIT_IRQ_CNT_MASK;
	mr |= (0 << AML_UART_MISC_XMIT_IRQ_CNT_SHIFT);
	mr &= ~AML_UART_MISC_RECV_IRQ_CNT_MASK;
	mr |= (1 << AML_UART_MISC_RECV_IRQ_CNT_SHIFT);
	FUNC6(bas, AML_UART_MISC_REG, mr);
	FUNC4(bas);

	FUNC1(sc);

	/* Ensure the reset bits are clear. */
	cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
	cr &= ~AML_UART_CONTROL_CLR_ERR;
	/* Enable the receive interrupt. */
	cr |= AML_UART_CONTROL_RX_INT_EN;
	FUNC6(bas, AML_UART_CONTROL_REG, cr);
	FUNC4(bas);

	return (0);
}