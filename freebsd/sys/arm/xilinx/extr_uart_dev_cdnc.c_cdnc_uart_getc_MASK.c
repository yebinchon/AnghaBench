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
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNC_UART_CHAN_STAT_REG ; 
 int CDNC_UART_CHAN_STAT_REG_RXEMPTY ; 
 int /*<<< orphan*/  CDNC_UART_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 

__attribute__((used)) static int
FUNC4(struct uart_bas *bas, struct mtx *mtx)
{
	int c;

	FUNC2(mtx);

	while ((FUNC1(bas, CDNC_UART_CHAN_STAT_REG) &
		CDNC_UART_CHAN_STAT_REG_RXEMPTY) != 0) {
		FUNC3(mtx);
		FUNC0(4);
		FUNC2(mtx);
	}
	
	c = FUNC1(bas, CDNC_UART_FIFO);
	
	FUNC3(mtx);

	c &= 0xff;
	return (c);
}