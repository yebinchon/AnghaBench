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
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

void
FUNC8(FICL_VM *pVM)
{
#ifndef TESTMAIN
	char	*name, *value;
#endif
	char	*namep, *valuep;
	int	names, values;

#if FICL_ROBUST > 1
	vmCheckStack(pVM, 4, 0);
#endif
	names = FUNC3(pVM->pStack);
	namep = (char*) FUNC4(pVM->pStack);
	values = FUNC3(pVM->pStack);
	valuep = (char*) FUNC4(pVM->pStack);

#ifndef TESTMAIN
	name = (char*) FUNC1(names+1);
	if (!name)
		FUNC7(pVM, "Error: out of memory");
	FUNC5(name, namep, names);
	name[names] = '\0';
	value = (char*) FUNC1(values+1);
	if (!value)
		FUNC7(pVM, "Error: out of memory");
	FUNC5(value, valuep, values);
	value[values] = '\0';

	FUNC2(name, value, 1);
	FUNC0(name);
	FUNC0(value);
#endif

	return;
}