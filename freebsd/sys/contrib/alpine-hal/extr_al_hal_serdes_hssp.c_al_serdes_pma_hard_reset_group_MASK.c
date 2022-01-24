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
struct al_serdes_grp_obj {int dummy; } ;
typedef  scalar_t__ al_bool ;

/* Variables and functions */
 int /*<<< orphan*/  AL_SRDS_REG_PAGE_4_COMMON ; 
 int /*<<< orphan*/  AL_SRDS_REG_TYPE_PMA ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_MASK ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_REG_NUM ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_VAL_REGS ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_MASK ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_REG_NUM ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_ASSERT ; 
 int /*<<< orphan*/  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_DEASSERT ; 
 int /*<<< orphan*/  FUNC0 (struct al_serdes_grp_obj*) ; 
 int /*<<< orphan*/  FUNC1 (struct al_serdes_grp_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct al_serdes_grp_obj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct al_serdes_grp_obj	*obj,
	al_bool				enable)
{
	if (enable)
		FUNC0(obj);

	/* Enable Hard Reset Override */
	FUNC2(
		obj,
		AL_SRDS_REG_PAGE_4_COMMON,
		AL_SRDS_REG_TYPE_PMA,
		SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_REG_NUM,
		SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_MASK,
		SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_VAL_REGS);

	/* Assert/Deassert Hard Reset Override */
	FUNC2(
		obj,
		AL_SRDS_REG_PAGE_4_COMMON,
		AL_SRDS_REG_TYPE_PMA,
		SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_REG_NUM,
		SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_MASK,
		enable ?
		SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_ASSERT :
		SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_DEASSERT);

	if (!enable)
		FUNC1(obj);
}