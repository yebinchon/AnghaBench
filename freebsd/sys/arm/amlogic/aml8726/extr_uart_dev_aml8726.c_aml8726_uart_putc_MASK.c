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

/* Variables and functions */
 int /*<<< orphan*/  AML_UART_STATUS_REG ; 
 int AML_UART_STATUS_TX_FIFO_FULL ; 
 int /*<<< orphan*/  AML_UART_WFIFO_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct uart_bas *bas, int c)
{

	while ((FUNC2(bas, AML_UART_STATUS_REG) &
	    AML_UART_STATUS_TX_FIFO_FULL) != 0)
		FUNC0();

	FUNC3(bas, AML_UART_WFIFO_REG, c);
	FUNC1(bas);
}