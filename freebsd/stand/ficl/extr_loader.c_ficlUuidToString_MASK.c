#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ uuid_s_ok ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

void
FUNC6(FICL_VM *pVM)
{
#ifndef	TESTMAIN
	char	*uuid;
	uint32_t status;
#endif
	uuid_t	*u;

#if FICL_ROBUST > 1
	vmCheckStack(pVM, 1, 0);
#endif

	u = (uuid_t *)FUNC0(pVM->pStack);

#ifndef	TESTMAIN
	FUNC4(u, &uuid, &status);
	if (status != uuid_s_ok) {
		FUNC2(pVM->pStack, uuid);
		FUNC1(pVM->pStack, FUNC3(uuid));
	} else
#endif
		FUNC1(pVM->pStack, -1);

	return;
}