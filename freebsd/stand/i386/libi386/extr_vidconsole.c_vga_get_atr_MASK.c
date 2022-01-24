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
 scalar_t__ VGA_AC_READ ; 
 scalar_t__ VGA_AC_WRITE ; 
 scalar_t__ VGA_GEN_INPUT_STAT_1 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC2(int reg, int i)
{
	int ret;

	(void) FUNC0(reg + VGA_GEN_INPUT_STAT_1);
	FUNC1(reg + VGA_AC_WRITE, i);
	ret = FUNC0(reg + VGA_AC_READ);

	(void) FUNC0(reg + VGA_GEN_INPUT_STAT_1);

	return (ret);
}