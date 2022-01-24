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
typedef  int /*<<< orphan*/  uint32_t ;
struct fman_fpm_regs {int /*<<< orphan*/  fmfp_ee; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uint32_t FUNC2(struct fman_fpm_regs *fpm_rg)
{
	uint32_t	event;

	event = FUNC0(&fpm_rg->fmfp_ee);
	/* clear the all occurred events */
	FUNC1(event, &fpm_rg->fmfp_ee);
	return event;
}