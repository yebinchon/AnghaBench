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
 int /*<<< orphan*/  UART_D ; 
 int /*<<< orphan*/  UART_S1 ; 
 int UART_S1_RDRF ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 

__attribute__((used)) static int
FUNC3(struct uart_bas *bas, struct mtx *hwmtx)
{
	int c;

	FUNC1(hwmtx);

	while (!(FUNC0(bas, UART_S1) & UART_S1_RDRF))
		;

	c = FUNC0(bas, UART_D);
	FUNC2(hwmtx);

	return (c & 0xff);
}