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

/* Variables and functions */
 int /*<<< orphan*/  AML_UART_CONTROL_REG ; 
 int AML_UART_CONTROL_RX_EN ; 
 int AML_UART_CONTROL_RX_INT_EN ; 
 int AML_UART_CONTROL_RX_RST ; 
 int AML_UART_CONTROL_TX_EN ; 
 int AML_UART_CONTROL_TX_INT_EN ; 
 int AML_UART_CONTROL_TX_RST ; 
 int AML_UART_MISC_RECV_IRQ_CNT_MASK ; 
 int /*<<< orphan*/  AML_UART_MISC_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	uint32_t cr;
	uint32_t mr;

	(void)FUNC0(bas, baudrate, databits, stopbits, parity);

	cr = FUNC2(bas, AML_UART_CONTROL_REG);
	/* Disable all interrupt sources. */
	cr &= ~(AML_UART_CONTROL_TX_INT_EN | AML_UART_CONTROL_RX_INT_EN);
	/* Reset the transmitter and receiver. */
	cr |= (AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
	/* Enable the transmitter and receiver. */
	cr |= (AML_UART_CONTROL_TX_EN | AML_UART_CONTROL_RX_EN);
	FUNC3(bas, AML_UART_CONTROL_REG, cr);
	FUNC1(bas);

	/* Clear RX FIFO level for generating interrupts. */
	mr = FUNC2(bas, AML_UART_MISC_REG);
	mr &= ~AML_UART_MISC_RECV_IRQ_CNT_MASK;
	FUNC3(bas, AML_UART_MISC_REG, mr);
	FUNC1(bas);

	/* Ensure the reset bits are clear. */
	cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
	FUNC3(bas, AML_UART_CONTROL_REG, cr);
	FUNC1(bas);
}