#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  gp_sstatus; int /*<<< orphan*/  gp_sepc; int /*<<< orphan*/  gp_tp; int /*<<< orphan*/  gp_gp; int /*<<< orphan*/  gp_sp; int /*<<< orphan*/  gp_ra; int /*<<< orphan*/  gp_a; int /*<<< orphan*/  gp_s; int /*<<< orphan*/  gp_t; } ;
struct TYPE_7__ {TYPE_1__ mc_gpregs; } ;
struct TYPE_6__ {TYPE_3__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
struct reg {int /*<<< orphan*/  sstatus; int /*<<< orphan*/  sepc; int /*<<< orphan*/  tp; int /*<<< orphan*/  gp; int /*<<< orphan*/  sp; int /*<<< orphan*/  ra; int /*<<< orphan*/  a; int /*<<< orphan*/  s; int /*<<< orphan*/  t; } ;
typedef  TYPE_3__ mcontext_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC1(const struct reg *r, ucontext_t *uc)
{
	mcontext_t *mc;

	mc = &uc->uc_mcontext;

	FUNC0(mc->mc_gpregs.gp_t, r->t, sizeof(mc->mc_gpregs.gp_t));
	FUNC0(mc->mc_gpregs.gp_s, r->s, sizeof(mc->mc_gpregs.gp_s));
	FUNC0(mc->mc_gpregs.gp_a, r->a, sizeof(mc->mc_gpregs.gp_a));
	mc->mc_gpregs.gp_ra = r->ra;
	mc->mc_gpregs.gp_sp = r->sp;
	mc->mc_gpregs.gp_gp = r->gp;
	mc->mc_gpregs.gp_tp = r->tp;
	mc->mc_gpregs.gp_sepc = r->sepc;
	mc->mc_gpregs.gp_sstatus = r->sstatus;
}