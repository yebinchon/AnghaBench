#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  p_BmPortalLow; } ;
typedef  TYPE_1__ t_BmPortal ;

/* Variables and functions */
 int /*<<< orphan*/  RCR_ITHRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void FUNC2(t_BmPortal *p_BmPortal, int check)
{
    if (!check || !FUNC0(p_BmPortal->p_BmPortalLow))
        FUNC1(p_BmPortal->p_BmPortalLow, RCR_ITHRESH);
}