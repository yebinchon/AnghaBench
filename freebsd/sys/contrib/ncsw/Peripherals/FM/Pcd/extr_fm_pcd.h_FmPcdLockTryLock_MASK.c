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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int flag; int /*<<< orphan*/  h_Spinlock; } ;
typedef  TYPE_1__ t_FmPcdLock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ bool FUNC3(t_FmPcdLock *p_Lock)
{
    uint32_t intFlags;

    FUNC0(p_Lock);
    intFlags = FUNC1(p_Lock->h_Spinlock);
    if (p_Lock->flag)
    {
        FUNC2(p_Lock->h_Spinlock, intFlags);
        return FALSE;
    }
    p_Lock->flag = TRUE;
    FUNC2(p_Lock->h_Spinlock, intFlags);
    return TRUE;
}