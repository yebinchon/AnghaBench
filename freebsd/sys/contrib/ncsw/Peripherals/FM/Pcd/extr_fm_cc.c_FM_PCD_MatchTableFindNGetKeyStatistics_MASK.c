#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__ numOfKeys; int /*<<< orphan*/  h_Spinlock; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;
typedef  int /*<<< orphan*/  t_FmPcdCcKeyStatistics ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

t_Error FUNC8(
        t_Handle h_CcNode, uint8_t keySize, uint8_t *p_Key, uint8_t *p_Mask,
        t_FmPcdCcKeyStatistics *p_KeyStatistics)
{
    t_FmPcdCcNode *p_CcNode = (t_FmPcdCcNode *)h_CcNode;
    uint16_t keyIndex;
    uint32_t intFlags;
    t_Error err;

    FUNC5(p_Key, E_NULL_POINTER);
    FUNC5(p_KeyStatistics, E_NULL_POINTER);

    intFlags = FUNC6(p_CcNode->h_Spinlock);

    err = FUNC1(p_CcNode, keySize, p_Key, p_Mask, &keyIndex);
    if (FUNC2(err) != E_OK)
    {
        FUNC7(p_CcNode->h_Spinlock, intFlags);
        FUNC4(MAJOR, err,
                     ("The received key and mask pair was not found in the "
                     "match table of the provided node"));
    }

    FUNC0(keyIndex < p_CcNode->numOfKeys);

    err = FUNC3(p_CcNode, keyIndex, p_KeyStatistics);

    FUNC7(p_CcNode->h_Spinlock, intFlags);

    if (err != E_OK)
        FUNC4(MAJOR, err, NO_MSG);

    return E_OK;
}