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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct TYPE_3__ {int /*<<< orphan*/  h_Spinlock; int /*<<< orphan*/  numOfKeys; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;
typedef  int /*<<< orphan*/  t_FmPcdCcKeyStatistics ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

t_Error FUNC5(
        t_Handle h_CcNode, t_FmPcdCcKeyStatistics *p_MissStatistics)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;
    uint32_t intFlags;
    t_Error err;

    FUNC2(h_CcNode, E_INVALID_HANDLE);
    FUNC2(p_MissStatistics, E_NULL_POINTER);

    intFlags = FUNC3(p_CcNode->h_Spinlock);

    err = FUNC0(p_CcNode, p_CcNode->numOfKeys,
                                     p_MissStatistics);

    FUNC4(p_CcNode->h_Spinlock, intFlags);

    if (err != E_OK)
        FUNC1(MAJOR, err, NO_MSG);

    return E_OK;
}