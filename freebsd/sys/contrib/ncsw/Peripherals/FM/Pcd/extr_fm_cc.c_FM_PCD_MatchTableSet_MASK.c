#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdCcNodeParams ;
typedef  int /*<<< orphan*/  t_FmPcdCcNode ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  E_BUSY 129 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
#define  E_OK 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

t_Handle FUNC7(t_Handle h_FmPcd,
                              t_FmPcdCcNodeParams *p_CcNodeParam)
{
    t_FmPcdCcNode *p_CcNode;
    t_Error err;

    FUNC4(h_FmPcd, E_INVALID_HANDLE, NULL);
    FUNC4(p_CcNodeParam, E_NULL_POINTER, NULL);

    p_CcNode = (t_FmPcdCcNode*)FUNC5(sizeof(t_FmPcdCcNode));
    if (!p_CcNode)
    {
        FUNC3(MAJOR, E_NO_MEMORY, ("No memory"));
        return NULL;
    }
    FUNC6(p_CcNode, 0, sizeof(t_FmPcdCcNode));

    err = FUNC2(h_FmPcd, p_CcNode, p_CcNodeParam);

    switch(FUNC1(err)
)    {
        case E_OK:
        break;

        case E_BUSY:
        FUNC0(TRACE, ("E_BUSY error"));
        return NULL;

        default:
        FUNC3(MAJOR, err, NO_MSG);
        return NULL;
    }

    return p_CcNode;
}