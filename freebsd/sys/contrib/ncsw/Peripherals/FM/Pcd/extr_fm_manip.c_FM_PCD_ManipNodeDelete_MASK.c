#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_7__ {scalar_t__ h_FmPcd; int /*<<< orphan*/ * h_Spinlock; scalar_t__ p_Hmct; scalar_t__ h_NextManip; scalar_t__ owner; } ;
typedef  TYPE_1__ t_FmPcdManip ;
struct TYPE_8__ {int /*<<< orphan*/  h_FmMuram; } ;
typedef  TYPE_2__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

t_Error FUNC10(t_Handle h_ManipNode)
{
    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_ManipNode;

    FUNC7(p_Manip, E_INVALID_HANDLE);

    if (p_Manip->owner)
        FUNC5(
                MAJOR,
                E_INVALID_STATE,
                ("This manipulation node not be removed because this node is occupied, first - unbind this node "));

    if (p_Manip->h_NextManip)
    {
        FUNC4(p_Manip->h_NextManip, NULL);
        FUNC1(p_Manip->h_NextManip, FALSE);
    }

    if (p_Manip->p_Hmct
            && (FUNC3(p_Manip) || !FUNC2(p_Manip)))
        FUNC0(((t_FmPcd *)p_Manip->h_FmPcd)->h_FmMuram,
                         p_Manip->p_Hmct);

    if (p_Manip->h_Spinlock)
    {
        FUNC9(p_Manip->h_Spinlock);
        p_Manip->h_Spinlock = NULL;
    }

    FUNC6(p_Manip, p_Manip->h_FmPcd);

    FUNC8(h_ManipNode);

    return E_OK;
}