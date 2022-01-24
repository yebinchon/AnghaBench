#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_11__ {scalar_t__ h_FmPcd; } ;
typedef  TYPE_1__ t_FmPcdCcTree ;
typedef  TYPE_1__ t_FmPcdCcNextEngineParams ;
typedef  TYPE_1__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE ; 

t_Error FUNC7(
        t_Handle h_CcTree, uint8_t grpId, uint8_t index,
        t_FmPcdCcNextEngineParams *p_FmPcdCcNextEngineParams)
{
    t_FmPcd *p_FmPcd;
    t_FmPcdCcTree *p_CcTree = (t_FmPcdCcTree *)h_CcTree;
    t_Error err = E_OK;

    FUNC6(p_FmPcdCcNextEngineParams, E_NULL_POINTER);
    FUNC6(p_CcTree, E_INVALID_STATE);
    p_FmPcd = (t_FmPcd *)p_CcTree->h_FmPcd;
    FUNC6(p_FmPcd, E_INVALID_HANDLE);

    if (!FUNC3(p_FmPcd))
    {
        FUNC0(TRACE, ("FmPcdLockTryLockAll failed"));
        return FUNC1(E_BUSY);
    }

    err = FUNC2(p_FmPcd, p_CcTree, grpId, index,
                                           p_FmPcdCcNextEngineParams);
    FUNC4(p_FmPcd);

    if (err)
    {
        FUNC5(MAJOR, err, NO_MSG);
    }

    return E_OK;
}