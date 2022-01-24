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
struct fman_kg_regs {int /*<<< orphan*/  fmkg_seeer; int /*<<< orphan*/  fmkg_seer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

void FUNC1(struct fman_kg_regs *regs)
{
	/* enable and enable all scheme interrupts */
	FUNC0(0xFFFFFFFF, &regs->fmkg_seer);
	FUNC0(0xFFFFFFFF, &regs->fmkg_seeer);
}