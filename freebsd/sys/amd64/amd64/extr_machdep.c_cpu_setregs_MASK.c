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
typedef  int register_t ;

/* Variables and functions */
 int CR0_AM ; 
 int CR0_MP ; 
 int CR0_NE ; 
 int CR0_TS ; 
 int CR0_WP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 

void
FUNC2(void)
{
	register_t cr0;

	cr0 = FUNC1();
	/*
	 * CR0_MP, CR0_NE and CR0_TS are also set by npx_probe() for the
	 * BSP.  See the comments there about why we set them.
	 */
	cr0 |= CR0_MP | CR0_NE | CR0_TS | CR0_WP | CR0_AM;
	FUNC0(cr0);
}