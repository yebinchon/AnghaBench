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
struct TYPE_5__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

void
FUNC8(FICL_VM *pVM)
{
#ifndef TESTMAIN
	char	*name;
#endif
	char	*namep;
	int	names;

#if FICL_ROBUST > 1
	vmCheckStack(pVM, 2, 0);
#endif
	names = FUNC2(pVM->pStack);
	namep = (char*) FUNC3(pVM->pStack);

#ifndef TESTMAIN
	name = (char*) FUNC1(names+1);
	if (!name)
		FUNC7(pVM, "Error: out of memory");
	FUNC4(name, namep, names);
	name[names] = '\0';

	FUNC5(name);
	FUNC0(name);
#endif

	return;
}