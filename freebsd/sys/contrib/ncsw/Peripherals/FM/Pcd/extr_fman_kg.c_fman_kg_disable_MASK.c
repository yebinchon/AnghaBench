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
struct fman_kg_regs {int /*<<< orphan*/  fmkg_gcr; } ;

/* Variables and functions */
 int FM_KG_KGGCR_EN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct fman_kg_regs *regs)
{
	FUNC1(FUNC0(&regs->fmkg_gcr) & ~FM_KG_KGGCR_EN,
			&regs->fmkg_gcr);
}