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
struct TYPE_4__ {int flags; int /*<<< orphan*/  p_BmPortalLow; int /*<<< orphan*/  irq; } ;
typedef  TYPE_1__ t_BmPortal ;

/* Variables and functions */
 int BMAN_PORTAL_FLAG_IRQ ; 
 int /*<<< orphan*/  BM_RCR_RING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(t_BmPortal* p_BmPortal)
{
    FUNC0(p_BmPortal, BM_RCR_RING);
    if (p_BmPortal->flags & BMAN_PORTAL_FLAG_IRQ)
    {
        FUNC1(p_BmPortal->irq);
        FUNC3(p_BmPortal->irq);
    }
    FUNC4(p_BmPortal->p_BmPortalLow);
    FUNC5(p_BmPortal->p_BmPortalLow);
    FUNC2(p_BmPortal->p_BmPortalLow);
}