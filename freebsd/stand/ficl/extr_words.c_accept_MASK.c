#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  int FICL_UNS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VM_RESTART ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 char* FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC9(FICL_VM *pVM)
{
    FICL_UNS count, len;
    char *cp;
    char *pBuf, *pEnd;

#if FICL_ROBUST > 1
    vmCheckStack(pVM,2,1);
#endif

    pBuf = FUNC5(pVM);
    pEnd = FUNC6(pVM);
    len = pEnd - pBuf;
    if (len == 0)
        FUNC7(pVM, VM_RESTART);

    /*
    ** Now we have something in the text buffer - use it 
    */
    count = FUNC1(pVM->pStack);
    cp    = FUNC2(pVM->pStack);

    len = (count < len) ? count : len;
    FUNC3(cp, FUNC5(pVM), len);
    pBuf += len;
    FUNC8(pVM, pBuf);
    FUNC0(len);

    return;
}