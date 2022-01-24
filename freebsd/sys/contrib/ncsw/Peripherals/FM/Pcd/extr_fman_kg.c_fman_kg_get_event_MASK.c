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
typedef  int uint32_t ;
struct fman_kg_regs {int /*<<< orphan*/  fmkg_seer; int /*<<< orphan*/  fmkg_eer; int /*<<< orphan*/  fmkg_feer; int /*<<< orphan*/  fmkg_seeer; int /*<<< orphan*/  fmkg_eeer; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct fman_kg_regs *regs,
			uint32_t *event,
			uint32_t *scheme_idx)
{
	uint32_t mask, force;

	*event = FUNC0(&regs->fmkg_eer);
	mask = FUNC0(&regs->fmkg_eeer);
	*scheme_idx = FUNC0(&regs->fmkg_seer);
	*scheme_idx &= FUNC0(&regs->fmkg_seeer);

	*event &= mask;

	/* clear the forced events */
	force = FUNC0(&regs->fmkg_feer);
	if (force & *event)
		FUNC1(force & ~*event ,&regs->fmkg_feer);

	FUNC1(*event, &regs->fmkg_eer);
	FUNC1(*scheme_idx, &regs->fmkg_seer);
}