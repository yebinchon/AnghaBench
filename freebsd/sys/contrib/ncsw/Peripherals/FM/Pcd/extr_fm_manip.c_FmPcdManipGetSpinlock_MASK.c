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
typedef  int /*<<< orphan*/  t_List ;
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {int /*<<< orphan*/ * h_Spinlock; } ;
typedef  TYPE_1__ t_FmPcdManip ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

t_List *FUNC1(t_Handle h_Manip)
{
    FUNC0(h_Manip);
    return ((t_FmPcdManip *)h_Manip)->h_Spinlock;
}