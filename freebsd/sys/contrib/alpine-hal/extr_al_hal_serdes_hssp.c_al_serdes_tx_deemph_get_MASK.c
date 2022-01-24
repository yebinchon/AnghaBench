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
struct al_serdes_grp_obj {int dummy; } ;
typedef  enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef  enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;

/* Variables and functions */
 int /*<<< orphan*/  AL_SRDS_REG_TYPE_PMA ; 
 int SERDES_IREG_TX_DRV_1_LEVN_MASK ; 
 int SERDES_IREG_TX_DRV_1_LEVN_SHIFT ; 
 int /*<<< orphan*/  SERDES_IREG_TX_DRV_1_REG_NUM ; 
 int SERDES_IREG_TX_DRV_2_LEVNM1_MASK ; 
 int SERDES_IREG_TX_DRV_2_LEVNM1_SHIFT ; 
 int /*<<< orphan*/  SERDES_IREG_TX_DRV_2_REG_NUM ; 
 int SERDES_IREG_TX_DRV_3_LEVNP1_MASK ; 
 int SERDES_IREG_TX_DRV_3_LEVNP1_SHIFT ; 
 int /*<<< orphan*/  SERDES_IREG_TX_DRV_3_REG_NUM ; 
 int FUNC0 (struct al_serdes_grp_obj*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(
		struct al_serdes_grp_obj	*obj,
		enum al_serdes_lane		lane,
		uint32_t			*c_zero,
		uint32_t			*c_plus_1,
		uint32_t			*c_minus_1)
{
	uint32_t reg = 0;

	reg = FUNC0(
			obj,
			(enum al_serdes_reg_page)lane,
			AL_SRDS_REG_TYPE_PMA,
			SERDES_IREG_TX_DRV_2_REG_NUM);

	*c_plus_1 = ((reg & SERDES_IREG_TX_DRV_2_LEVNM1_MASK) >>
					SERDES_IREG_TX_DRV_2_LEVNM1_SHIFT);

	reg = FUNC0(
			obj,
			(enum al_serdes_reg_page)lane,
			AL_SRDS_REG_TYPE_PMA,
			SERDES_IREG_TX_DRV_3_REG_NUM);

	*c_minus_1 = ((reg & SERDES_IREG_TX_DRV_3_LEVNP1_MASK) >>
					SERDES_IREG_TX_DRV_3_LEVNP1_SHIFT);

	reg = FUNC0(
			obj,
			(enum al_serdes_reg_page)lane,
			AL_SRDS_REG_TYPE_PMA,
			SERDES_IREG_TX_DRV_1_REG_NUM);

	*c_zero = (((reg & SERDES_IREG_TX_DRV_1_LEVN_MASK) >>
		SERDES_IREG_TX_DRV_1_LEVN_SHIFT) - *c_plus_1 - *c_minus_1);
}