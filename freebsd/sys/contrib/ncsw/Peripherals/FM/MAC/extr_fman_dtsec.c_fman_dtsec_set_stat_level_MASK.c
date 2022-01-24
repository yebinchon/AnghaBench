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
struct dtsec_regs {int /*<<< orphan*/  imask; int /*<<< orphan*/  ecntrl; int /*<<< orphan*/  cam2; int /*<<< orphan*/  cam1; } ;
typedef  enum dtsec_stat_level { ____Placeholder_dtsec_stat_level } dtsec_stat_level ;

/* Variables and functions */
 int CAM1_ERRORS_ONLY ; 
 int /*<<< orphan*/  CAM1_MIB_GRP_1 ; 
 int CAM2_ERRORS_ONLY ; 
 int /*<<< orphan*/  CAM2_MIB_GRP_1 ; 
 int DTSEC_ECNTRL_STEN ; 
 int DTSEC_IMASK_MSROEN ; 
 int EINVAL ; 
#define  E_MAC_STAT_FULL 131 
#define  E_MAC_STAT_MIB_GRP1 130 
#define  E_MAC_STAT_NONE 129 
#define  E_MAC_STAT_PARTIAL 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

int FUNC2(struct dtsec_regs *regs, enum dtsec_stat_level level)
{
	switch (level) {
	case E_MAC_STAT_NONE:
		FUNC1(0xffffffff, &regs->cam1);
		FUNC1(0xffffffff, &regs->cam2);
		FUNC1(FUNC0(&regs->ecntrl) & ~DTSEC_ECNTRL_STEN,
				&regs->ecntrl);
		FUNC1(FUNC0(&regs->imask) & ~DTSEC_IMASK_MSROEN,
				&regs->imask);
		break;
	case E_MAC_STAT_PARTIAL:
		FUNC1(CAM1_ERRORS_ONLY, &regs->cam1);
		FUNC1(CAM2_ERRORS_ONLY, &regs->cam2);
		FUNC1(FUNC0(&regs->ecntrl) | DTSEC_ECNTRL_STEN,
				&regs->ecntrl);
		FUNC1(FUNC0(&regs->imask) | DTSEC_IMASK_MSROEN,
				&regs->imask);
		break;
	case E_MAC_STAT_MIB_GRP1:
		FUNC1((uint32_t)~CAM1_MIB_GRP_1, &regs->cam1);
		FUNC1((uint32_t)~CAM2_MIB_GRP_1, &regs->cam2);
		FUNC1(FUNC0(&regs->ecntrl) | DTSEC_ECNTRL_STEN,
				&regs->ecntrl);
		FUNC1(FUNC0(&regs->imask) | DTSEC_IMASK_MSROEN,
				&regs->imask);
		break;
	case E_MAC_STAT_FULL:
		FUNC1(0, &regs->cam1);
		FUNC1(0, &regs->cam2);
		FUNC1(FUNC0(&regs->ecntrl) | DTSEC_ECNTRL_STEN,
				&regs->ecntrl);
		FUNC1(FUNC0(&regs->imask) | DTSEC_IMASK_MSROEN,
				&regs->imask);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}