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

/* Variables and functions */
 int /*<<< orphan*/  IMX_TXD ; 
 int /*<<< orphan*/  IMX_UTS ; 
 int IMX_UTS_TXFULL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void
FUNC2(unsigned char c)
{

	if (c == '\n')
		FUNC2('\r');

	while (FUNC0(IMX_UTS) & IMX_UTS_TXFULL)
		__asm __volatile("nop");

	FUNC1(IMX_TXD, c);
}