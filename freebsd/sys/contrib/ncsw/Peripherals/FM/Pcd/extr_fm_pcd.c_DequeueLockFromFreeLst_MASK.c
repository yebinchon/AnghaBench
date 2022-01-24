#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ t_FmPcdLock ;
struct TYPE_9__ {int /*<<< orphan*/  p_Next; } ;
struct TYPE_8__ {scalar_t__ h_Spinlock; TYPE_3__ freeLocksLst; } ;
typedef  TYPE_2__ t_FmPcd ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_FmPcdLock * FUNC5(t_FmPcd *p_FmPcd)
{
    t_FmPcdLock *p_Lock = NULL;
    uint32_t    intFlags;

    intFlags = FUNC3(p_FmPcd->h_Spinlock);
    if (!FUNC2(&p_FmPcd->freeLocksLst))
    {
        p_Lock = FUNC0(p_FmPcd->freeLocksLst.p_Next);
        FUNC1(&p_Lock->node);
    }
    if (p_FmPcd->h_Spinlock)
    	FUNC4(p_FmPcd->h_Spinlock, intFlags);

    return p_Lock;
}