#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char uuid_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,scalar_t__*) ; 
 scalar_t__ uuid_s_ok ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

void
FUNC9(FICL_VM *pVM)
{
#ifndef	TESTMAIN
	char	*uuid;
	uint32_t status;
#endif
	char	*uuidp;
	int	uuids;
	uuid_t	*u;

#if FICL_ROBUST > 1
	vmCheckStack(pVM, 2, 0);
#endif

	uuids = FUNC2(pVM->pStack);
	uuidp = (char *) FUNC3(pVM->pStack);

#ifndef	TESTMAIN
	uuid = (char *)FUNC1(uuids + 1);
	if (!uuid)
		FUNC8(pVM, "Error: out of memory");
	FUNC5(uuid, uuidp, uuids);
	uuid[uuids] = '\0';

	u = (uuid_t *)FUNC1(sizeof (*u));

	FUNC6(uuid, u, &status);
	FUNC0(uuid);
	if (status != uuid_s_ok) {
		FUNC0(u);
		u = NULL;
	}
#else
	u = NULL;
#endif
	FUNC4(pVM->pStack, u);


	return;
}