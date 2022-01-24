#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mulhi; int /*<<< orphan*/  mullo; int /*<<< orphan*/  mc_pc; int /*<<< orphan*/  mc_regs; } ;
struct TYPE_5__ {TYPE_1__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
struct reg {int /*<<< orphan*/ * r_regs; } ;

/* Variables and functions */
 size_t MULHI ; 
 size_t MULLO ; 
 size_t PC ; 
 size_t ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC1(const ucontext_t *uc, struct reg *r)
{
	FUNC0(&r->r_regs[ZERO], uc->uc_mcontext.mc_regs,
	    sizeof(uc->uc_mcontext.mc_regs));
	r->r_regs[PC] = uc->uc_mcontext.mc_pc;
	r->r_regs[MULLO] = uc->uc_mcontext.mullo;
	r->r_regs[MULHI] = uc->uc_mcontext.mulhi;
}