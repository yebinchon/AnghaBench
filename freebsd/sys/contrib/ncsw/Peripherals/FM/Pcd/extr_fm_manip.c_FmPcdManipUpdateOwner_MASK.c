#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {int /*<<< orphan*/  h_Spinlock; int /*<<< orphan*/  owner; } ;
typedef  TYPE_1__ t_FmPcdManip ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(t_Handle h_Manip, bool add)
{

    uint32_t intFlags;

    intFlags = FUNC1(((t_FmPcdManip *)h_Manip)->h_Spinlock);
    if (add)
        ((t_FmPcdManip *)h_Manip)->owner++;
    else
    {
        FUNC0(((t_FmPcdManip *)h_Manip)->owner);
        ((t_FmPcdManip *)h_Manip)->owner--;
    }
    FUNC2(((t_FmPcdManip *)h_Manip)->h_Spinlock, intFlags);
}