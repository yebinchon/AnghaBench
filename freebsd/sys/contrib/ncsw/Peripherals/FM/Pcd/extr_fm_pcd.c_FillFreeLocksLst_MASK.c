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
struct TYPE_5__ {int /*<<< orphan*/  h_Spinlock; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ t_FmPcdLock ;
typedef  int /*<<< orphan*/  t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static t_Error FUNC7(t_FmPcd *p_FmPcd)
{
    t_FmPcdLock *p_Lock;
    int         i;

    for (i=0; i<10; i++)
    {
        p_Lock = (t_FmPcdLock *)FUNC5(sizeof(t_FmPcdLock));
        if (!p_Lock)
            FUNC2(MINOR, E_NO_MEMORY, ("FM-PCD lock obj!"));
        FUNC6(p_Lock, 0, sizeof(t_FmPcdLock));
        FUNC1(&p_Lock->node);
        p_Lock->h_Spinlock = FUNC4();
        if (!p_Lock->h_Spinlock)
        {
            FUNC3(p_Lock);
            FUNC2(MINOR, E_INVALID_STATE, ("FM-PCD spinlock obj!"));
        }
        FUNC0(p_FmPcd, p_Lock);
    }

    return E_OK;
}