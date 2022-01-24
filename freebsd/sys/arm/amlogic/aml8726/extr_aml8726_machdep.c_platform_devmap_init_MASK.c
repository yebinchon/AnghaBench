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
 int /*<<< orphan*/  FUNC0 (int,int) ; 

int
FUNC1(void)
{

	FUNC0(0xc1100000, 0x200000); /* cbus */
	FUNC0(0xc4200000, 0x100000); /* pl310 */
	FUNC0(0xc4300000, 0x100000); /* periph */
	FUNC0(0xc8000000, 0x100000); /* apbbus */
	FUNC0(0xc8100000, 0x100000); /* aobus */
	FUNC0(0xc9000000, 0x800000); /* ahbbus */
	FUNC0(0xd9000000, 0x100000); /* ahb */
	FUNC0(0xda000000, 0x100000); /* secbus */

	return (0);
}