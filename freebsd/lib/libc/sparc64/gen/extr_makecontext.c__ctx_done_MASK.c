#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ _mc_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/ * uc_link; TYPE_1__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 

void
FUNC3(ucontext_t *ucp)
{

	if (ucp->uc_link == NULL)
		FUNC1(0);
	else {
		ucp->uc_mcontext._mc_flags = 0;
		FUNC2((const ucontext_t *)ucp->uc_link);
		FUNC0();
	}
}