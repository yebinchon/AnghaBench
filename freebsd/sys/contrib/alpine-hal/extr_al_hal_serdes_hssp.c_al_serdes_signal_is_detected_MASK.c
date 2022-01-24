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
typedef  int /*<<< orphan*/  al_bool ;

/* Variables and functions */
 int /*<<< orphan*/  AL_FALSE ; 
 int /*<<< orphan*/  AL_SRDS_REG_TYPE_PMA ; 
 int /*<<< orphan*/  AL_TRUE ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_RXRANDET_REG_NUM ; 
 int SERDES_IREG_FLD_RXRANDET_STAT ; 
 int FUNC0 (struct al_serdes_grp_obj*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static al_bool FUNC1(
		struct al_serdes_grp_obj	*obj,
		enum al_serdes_lane		lane)
{
	uint32_t reg = 0;

	reg = FUNC0(
			obj,
			(enum al_serdes_reg_page)lane,
			AL_SRDS_REG_TYPE_PMA,
			SERDES_IREG_FLD_RXRANDET_REG_NUM);

	return ((reg & SERDES_IREG_FLD_RXRANDET_STAT) ? AL_TRUE : AL_FALSE);
}