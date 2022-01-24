#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * smudge; } ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  TYPE_1__ FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    FICL_DICT *pDict = FUNC2(pVM);
    FICL_WORD *wp = pDict->smudge;
    FUNC1(wp);
    FUNC3(pVM, FUNC0(wp));
    return;
}