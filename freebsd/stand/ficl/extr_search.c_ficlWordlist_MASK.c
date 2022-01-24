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
typedef  int /*<<< orphan*/  FICL_UNS ;
typedef  int /*<<< orphan*/  FICL_HASH ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    FICL_DICT *dp = FUNC4(pVM);
    FICL_HASH *pHash;
    FICL_UNS nBuckets;
    
#if FICL_ROBUST > 1
    vmCheckStack(pVM, 1, 1);
#endif
    nBuckets = FUNC1(pVM->pStack);
    pHash = FUNC0(dp, nBuckets);
    FUNC2(pVM->pStack, pHash);
    return;
}