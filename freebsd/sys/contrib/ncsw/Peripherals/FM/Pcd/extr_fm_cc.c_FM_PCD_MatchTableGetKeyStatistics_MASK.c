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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct TYPE_3__ {scalar_t__ numOfKeys; int /*<<< orphan*/  h_Spinlock; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;
typedef  int /*<<< orphan*/  t_FmPcdCcKeyStatistics ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

t_Error FUNC5(
        t_Handle h_CcNode, uint16_t keyIndex,
        t_FmPcdCcKeyStatistics *p_KeyStatistics)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;
    uint32_t intFlags;
    t_Error err;

    FUNC2(h_CcNode, E_INVALID_HANDLE);
    FUNC2(p_KeyStatistics, E_NULL_POINTER);

    intFlags = FUNC3(p_CcNode->h_Spinlock);

    if (keyIndex >= p_CcNode->numOfKeys)
        FUNC1(
                MAJOR,
                E_INVALID_STATE,
                ("The provided keyIndex exceeds the number of keys in this match table"));

    err = FUNC0(p_CcNode, keyIndex, p_KeyStatistics);

    FUNC4(p_CcNode->h_Spinlock, intFlags);

    if (err != E_OK)
        FUNC1(MAJOR, err, NO_MSG);

    return E_OK;
}