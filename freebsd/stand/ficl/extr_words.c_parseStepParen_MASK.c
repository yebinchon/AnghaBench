#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pStack; TYPE_2__* runningWord; } ;
struct TYPE_8__ {TYPE_1__* param; } ;
struct TYPE_7__ {int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  TYPE_2__ FICL_WORD ;
typedef  TYPE_3__ FICL_VM ;
typedef  int /*<<< orphan*/  (* FICL_PARSE_STEP ) (TYPE_3__*,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC6(FICL_VM *pVM)
{
    STRINGINFO si;
    FICL_WORD *pFW = pVM->runningWord;
    FICL_PARSE_STEP pStep = (FICL_PARSE_STEP)(pFW->param->fn);

    FUNC1(si, FUNC3(pVM->pStack));
    FUNC2(si, FUNC4(pVM->pStack));
    
    FUNC0((*pStep)(pVM, si));

    return;
}