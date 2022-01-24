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
struct fman_kg_scheme_regs {int dummy; } ;
struct fman_kg_regs {int /*<<< orphan*/ * fmkg_indirect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fman_kg_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct fman_kg_regs *regs,
				uint8_t scheme_id,
				uint8_t hwport_id)
{
	struct fman_kg_scheme_regs *kgse_regs;
	uint32_t tmp_reg;
	int err, i;

	kgse_regs = (struct fman_kg_scheme_regs *)&(regs->fmkg_indirect[0]);

	/* Clear all registers including enable bit in mode register */
	for (i = 0; i < (sizeof(struct fman_kg_scheme_regs)) / 4; ++i) {
		FUNC2(0, ((uint32_t *)kgse_regs + i));
	}

	/* Write AR (Action register) */
	tmp_reg = FUNC0(scheme_id, hwport_id, FALSE, TRUE);
	err = FUNC1(regs, tmp_reg);
	return err;
}