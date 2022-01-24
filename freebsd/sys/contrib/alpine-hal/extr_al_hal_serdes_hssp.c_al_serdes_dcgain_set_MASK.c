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
typedef  int uint8_t ;
struct al_serdes_grp_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_SRDS_REG_PAGE_4_COMMON ; 
 int /*<<< orphan*/  AL_SRDS_REG_TYPE_PMA ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_MASK ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_REG_NUM ; 
 int SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct al_serdes_grp_obj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(
	struct al_serdes_grp_obj	*obj,
	uint8_t				dcgain)
{
	FUNC0(obj,
			AL_SRDS_REG_PAGE_4_COMMON,
			AL_SRDS_REG_TYPE_PMA,
			SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_REG_NUM,
			SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_MASK,
			(dcgain << SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_SHIFT));
}