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
struct fman_kg_regs {int /*<<< orphan*/  fmkg_ar; } ;

/* Variables and functions */
 int EINVAL ; 
 int FM_KG_KGAR_GO ; 
 int FM_PCD_KG_KGAR_ERR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

int FUNC2(struct fman_kg_regs *regs, uint32_t fmkg_ar)
{
	FUNC1(fmkg_ar, &regs->fmkg_ar);
	/* Wait for GO to be idle and read error */
	while ((fmkg_ar = FUNC0(&regs->fmkg_ar)) & FM_KG_KGAR_GO) ;
	if (fmkg_ar & FM_PCD_KG_KGAR_ERR)
		return -EINVAL;
	return 0;
}