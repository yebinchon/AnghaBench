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
struct uart_bas {scalar_t__ rclk; } ;

/* Variables and functions */
 scalar_t__ DEF_CLK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SSCOM_UCON ; 
 int /*<<< orphan*/  SSCOM_UFCON ; 
 int /*<<< orphan*/  SSCOM_UMCON ; 
 int UCON_RXMODE_INT ; 
 int UCON_TOINT ; 
 int UCON_TXMODE_INT ; 
 int UFCON_FIFO_ENABLE ; 
 int UFCON_RXFIFO_RESET ; 
 int UFCON_RXTRIGGER_8 ; 
 int UFCON_TXFIFO_RESET ; 
 int UFCON_TXTRIGGER_8 ; 
 int UMCON_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{

	if (bas->rclk == 0)
		bas->rclk = DEF_CLK;

	FUNC0(bas->rclk != 0, ("exynos4210_init: Invalid rclk"));

	FUNC2(bas, SSCOM_UCON, 0);
	FUNC2(bas, SSCOM_UFCON,
	    UFCON_TXTRIGGER_8 | UFCON_RXTRIGGER_8 |
	    UFCON_TXFIFO_RESET | UFCON_RXFIFO_RESET |
	    UFCON_FIFO_ENABLE);
	FUNC1(bas, baudrate, databits, stopbits, parity);

	/* Enable UART. */
	FUNC2(bas, SSCOM_UCON, UCON_TXMODE_INT | UCON_RXMODE_INT |
	    UCON_TOINT);
	FUNC2(bas, SSCOM_UMCON, UMCON_RTS);
}