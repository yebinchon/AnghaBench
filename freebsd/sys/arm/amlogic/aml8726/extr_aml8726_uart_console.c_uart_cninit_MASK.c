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
struct consdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AML_UART_CONTROL_REG ; 
 int AML_UART_CONTROL_RX_EN ; 
 int AML_UART_CONTROL_RX_INT_EN ; 
 int AML_UART_CONTROL_RX_RST ; 
 int AML_UART_CONTROL_TWO_WIRE_EN ; 
 int AML_UART_CONTROL_TX_EN ; 
 int AML_UART_CONTROL_TX_INT_EN ; 
 int AML_UART_CONTROL_TX_RST ; 
 int AML_UART_MISC_RECV_IRQ_CNT_MASK ; 
 int /*<<< orphan*/  AML_UART_MISC_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * early_putc ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct consdev *cp)
{
	uint32_t cr;
	uint32_t mr;

#ifdef EARLY_PRINTF
	if (early_putc != NULL) {
		printf("Early printf yielding control to the real console.\n");
		early_putc = NULL;
	}

	/*
	 * Give pending characters a chance to drain.
	 */
	DELAY(4000);
#endif

	cr = FUNC2(AML_UART_CONTROL_REG);
	/* Disable all interrupt sources. */
	cr &= ~(AML_UART_CONTROL_TX_INT_EN | AML_UART_CONTROL_RX_INT_EN);
	/* Reset the transmitter and receiver. */
	cr |= (AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
	/* Use two wire mode. */
	cr |= AML_UART_CONTROL_TWO_WIRE_EN;
	/* Enable the transmitter and receiver. */
	cr |= (AML_UART_CONTROL_TX_EN | AML_UART_CONTROL_RX_EN);
	FUNC3(AML_UART_CONTROL_REG, cr);

	/* Clear RX FIFO level for generating interrupts. */
	mr = FUNC2(AML_UART_MISC_REG);
	mr &= ~AML_UART_MISC_RECV_IRQ_CNT_MASK;
	FUNC3(AML_UART_MISC_REG, mr);

	/* Ensure the reset bits are clear. */
	cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
	FUNC3(AML_UART_CONTROL_REG, cr);
}