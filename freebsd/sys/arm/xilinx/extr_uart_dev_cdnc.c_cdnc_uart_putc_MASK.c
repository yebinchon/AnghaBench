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
 int /*<<< orphan*/  CDNC_UART_CHAN_STAT_REG ; 
 int CDNC_UART_CHAN_STAT_REG_TXEMPTY ; 
 int CDNC_UART_CHAN_STAT_REG_TXFULL ; 
 int /*<<< orphan*/  CDNC_UART_FIFO ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct uart_bas *bas, int c)
{

	/* Wait for room. */
	while ((FUNC0(bas,CDNC_UART_CHAN_STAT_REG) &
		CDNC_UART_CHAN_STAT_REG_TXFULL) != 0)
		;

	FUNC1(bas, CDNC_UART_FIFO, c);

	while ((FUNC0(bas,CDNC_UART_CHAN_STAT_REG) &
		CDNC_UART_CHAN_STAT_REG_TXEMPTY) == 0)
		;
}