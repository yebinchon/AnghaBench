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
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdLock ;
typedef  int /*<<< orphan*/  t_FmPcd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

t_FmPcdLock * FUNC4(t_Handle h_FmPcd)
{
    t_FmPcdLock *p_Lock;
    FUNC0(h_FmPcd);
    p_Lock = FUNC1((t_FmPcd*)h_FmPcd);
    if (!p_Lock)
    {
        FUNC3(h_FmPcd);
        p_Lock = FUNC1((t_FmPcd*)h_FmPcd);
    }

    if (p_Lock)
        FUNC2((t_FmPcd*)h_FmPcd, p_Lock);
    return p_Lock;
}