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
 char* FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 

void
FUNC11(FICL_VM *pVM)
{
#ifndef TESTMAIN
	char	*name, *value;
#endif
	char	*namep;
	int	names;

#if FICL_ROBUST > 1
	vmCheckStack(pVM, 2, 2);
#endif
	names = FUNC3(pVM->pStack);
	namep = (char*) FUNC4(pVM->pStack);

#ifndef TESTMAIN
	name = (char*) FUNC1(names+1);
	if (!name)
		FUNC10(pVM, "Error: out of memory");
	FUNC8(name, namep, names);
	name[names] = '\0';

	value = FUNC2(name);
	FUNC0(name);

	if(value != NULL) {
		FUNC6(pVM->pStack, value);
		FUNC5(pVM->pStack, FUNC7(value));
	} else
#endif
		FUNC5(pVM->pStack, -1);

	return;
}