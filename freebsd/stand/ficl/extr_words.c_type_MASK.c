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
typedef  int FICL_UNS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC7(FICL_VM *pVM)
{
    FICL_UNS count = FUNC3(pVM->pStack);
    char *cp    = FUNC2(pVM->pStack);
    char *pDest = (char *)FUNC1(count + 1);

    /* 
    ** Since we don't have an output primitive for a counted string
    ** (oops), make sure the string is null terminated. If not, copy
    ** and terminate it.
    */
    if (!pDest)
	FUNC6(pVM, "Error: out of memory");
 
    FUNC4(pDest, cp, count);
    pDest[count] = '\0';
 
    FUNC5(pVM, pDest, 0);
 
    FUNC0(pDest);
    return;
}