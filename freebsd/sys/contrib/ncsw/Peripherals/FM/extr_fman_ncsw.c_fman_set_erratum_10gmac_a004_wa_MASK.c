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
struct fman_fpm_regs {int /*<<< orphan*/  fmfp_extc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

int FUNC3(struct fman_fpm_regs *fpm_rg)
{
	int timeout = 100;

	FUNC2(0x40000000, &fpm_rg->fmfp_extc);

	while ((FUNC1(&fpm_rg->fmfp_extc) & 0x40000000) && --timeout)
		FUNC0(10);

	if (!timeout)
		return -EBUSY;
	return 0;
}