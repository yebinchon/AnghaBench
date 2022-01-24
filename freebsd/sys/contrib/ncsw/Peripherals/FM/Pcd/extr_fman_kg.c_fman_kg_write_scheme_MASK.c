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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fman_kg_scheme_regs {int /*<<< orphan*/ * kgse_gec; int /*<<< orphan*/  kgse_mv; int /*<<< orphan*/  kgse_ccbs; int /*<<< orphan*/  kgse_dv1; int /*<<< orphan*/  kgse_dv0; int /*<<< orphan*/  kgse_spc; int /*<<< orphan*/  kgse_ppc; int /*<<< orphan*/  kgse_hc; int /*<<< orphan*/  kgse_fqb; int /*<<< orphan*/  kgse_bmcl; int /*<<< orphan*/  kgse_bmch; int /*<<< orphan*/  kgse_ekdv; int /*<<< orphan*/  kgse_ekfc; int /*<<< orphan*/  kgse_mode; } ;
struct fman_kg_regs {int /*<<< orphan*/ * fmkg_indirect; } ;

/* Variables and functions */
 int FM_KG_NUM_OF_GENERIC_REGS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fman_kg_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct fman_kg_regs *regs,
				uint8_t scheme_id,
				uint8_t hwport_id,
				struct fman_kg_scheme_regs *scheme_regs,
				bool update_counter)
{
	struct fman_kg_scheme_regs *kgse_regs;
	uint32_t tmp_reg;
	int err, i;

	/* Write indirect scheme registers */
	kgse_regs = (struct fman_kg_scheme_regs *)&(regs->fmkg_indirect[0]);

	FUNC2(scheme_regs->kgse_mode, &kgse_regs->kgse_mode);
	FUNC2(scheme_regs->kgse_ekfc, &kgse_regs->kgse_ekfc);
	FUNC2(scheme_regs->kgse_ekdv, &kgse_regs->kgse_ekdv);
	FUNC2(scheme_regs->kgse_bmch, &kgse_regs->kgse_bmch);
	FUNC2(scheme_regs->kgse_bmcl, &kgse_regs->kgse_bmcl);
	FUNC2(scheme_regs->kgse_fqb, &kgse_regs->kgse_fqb);
	FUNC2(scheme_regs->kgse_hc, &kgse_regs->kgse_hc);
	FUNC2(scheme_regs->kgse_ppc, &kgse_regs->kgse_ppc);
	FUNC2(scheme_regs->kgse_spc, &kgse_regs->kgse_spc);
	FUNC2(scheme_regs->kgse_dv0, &kgse_regs->kgse_dv0);
	FUNC2(scheme_regs->kgse_dv1, &kgse_regs->kgse_dv1);
	FUNC2(scheme_regs->kgse_ccbs, &kgse_regs->kgse_ccbs);
	FUNC2(scheme_regs->kgse_mv, &kgse_regs->kgse_mv);

	for (i = 0 ; i < FM_KG_NUM_OF_GENERIC_REGS ; i++)
		FUNC2(scheme_regs->kgse_gec[i], &kgse_regs->kgse_gec[i]);

	/* Write AR (Action register) */
	tmp_reg = FUNC0(scheme_id, hwport_id, update_counter, TRUE);
	err = FUNC1(regs, tmp_reg);
	return err;
}