#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  uc_sigmask; } ;
typedef  TYPE_1__ const ucontext_t ;
typedef  int /*<<< orphan*/  uc ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SIGCANCEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_1__ const*,int) ; 

int
FUNC4(const ucontext_t *ucp)
{
	ucontext_t uc;

	if (ucp == NULL) {
		errno = EINVAL;
		return (-1);
	}
	if (!FUNC1(ucp->uc_sigmask, SIGCANCEL))
		return (FUNC2(ucp));
	(void) FUNC3(&uc, ucp, sizeof(uc));
	FUNC0(uc.uc_sigmask, SIGCANCEL);
	return (FUNC2(&uc));
}