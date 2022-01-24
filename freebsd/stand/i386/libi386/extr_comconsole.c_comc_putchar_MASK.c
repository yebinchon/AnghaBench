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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int COMC_TXWAIT ; 
 int LSR_TXRDY ; 
 scalar_t__ com_data ; 
 scalar_t__ com_lsr ; 
 scalar_t__ comc_port ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(int c)
{
	int wait;

	for (wait = COMC_TXWAIT; wait > 0; wait--)
		if (FUNC0(comc_port + com_lsr) & LSR_TXRDY) {
			FUNC1(comc_port + com_data, (u_char)c);
			break;
		}
}