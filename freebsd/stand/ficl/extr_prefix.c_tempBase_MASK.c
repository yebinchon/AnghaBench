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
struct TYPE_6__ {int base; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM, int base)
{
    int oldbase = pVM->base;
    STRINGINFO si = FUNC3(pVM);

    pVM->base = base;
    if (!FUNC2(pVM, si)) 
    {
        int i = FUNC0(si);
        FUNC4(pVM, "%.*s not recognized", i, FUNC1(si));
    }

    pVM->base = oldbase;
    return;
}