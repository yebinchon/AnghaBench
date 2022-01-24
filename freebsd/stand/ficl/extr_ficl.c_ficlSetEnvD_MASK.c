#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * envp; } ;
struct TYPE_5__ {void** param; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  TYPE_1__ FICL_WORD ;
typedef  int /*<<< orphan*/  FICL_UNS ;
typedef  TYPE_2__ FICL_SYSTEM ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEFAULT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twoConstParen ; 

void FUNC5(FICL_SYSTEM *pSys, char *name, FICL_UNS hi, FICL_UNS lo)
{
    FICL_WORD *pFW;
    STRINGINFO si;
    FICL_DICT *envp = pSys->envp;
    FUNC1(si, name);
    pFW = FUNC4(envp, si);

    if (pFW == NULL)
    {
        FUNC3(envp, name, twoConstParen, FW_DEFAULT);
        FUNC2(envp, FUNC0(lo));
        FUNC2(envp, FUNC0(hi));
    }
    else
    {
        pFW->param[0] = FUNC0(lo);
        pFW->param[1] = FUNC0(hi);
    }

    return;
}