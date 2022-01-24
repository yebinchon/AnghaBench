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
struct TYPE_4__ {int /*<<< orphan*/  mc_fpstate; } ;
struct TYPE_5__ {TYPE_1__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
struct fpreg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fpreg*,int /*<<< orphan*/ *,int) ; 

void
FUNC1(const ucontext_t *uc, struct fpreg *r)
{

	FUNC0(r, &uc->uc_mcontext.mc_fpstate, sizeof(*r));
}