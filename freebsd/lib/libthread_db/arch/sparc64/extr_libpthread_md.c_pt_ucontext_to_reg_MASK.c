#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  uc_mcontext; } ;
typedef  TYPE_1__ ucontext_t ;
struct reg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct reg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(const ucontext_t *uc, struct reg *r)
{

	FUNC1(r, &uc->uc_mcontext, FUNC0(sizeof(uc->uc_mcontext), sizeof(*r)));
}