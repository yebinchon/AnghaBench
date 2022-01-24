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
struct preloaded_file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct preloaded_file* FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct preloaded_file*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

void
FUNC8(FICL_VM *pVM)
{
#ifndef TESTMAIN
	char	*name, *type;
#endif
	char	*namep, *typep;
	struct	preloaded_file* fp;
	int	names, types;

#if FICL_ROBUST > 1
	vmCheckStack(pVM, 4, 1);
#endif

	types = FUNC2(pVM->pStack);
	typep = (char*) FUNC3(pVM->pStack);
	names = FUNC2(pVM->pStack);
	namep = (char*) FUNC3(pVM->pStack);
#ifndef TESTMAIN
	name = (char*) FUNC0(names+1);
	if (!name)
		FUNC7(pVM, "Error: out of memory");
	FUNC5(name, namep, names);
	name[names] = '\0';
	type = (char*) FUNC0(types+1);
	if (!type)
		FUNC7(pVM, "Error: out of memory");
	FUNC5(type, typep, types);
	type[types] = '\0';

	fp = FUNC1(name, type);
#else
	fp = NULL;
#endif
	FUNC4(pVM->pStack, fp);

	return;
}