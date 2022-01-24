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
struct TYPE_3__ {int app_under_boot; int /*<<< orphan*/  hotplug_global_lock; } ;
typedef  TYPE_1__ cvmx_app_hotplug_global_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(int val)
{
    cvmx_app_hotplug_global_t *hgp;

    hgp = FUNC0();
    FUNC1(&hgp->hotplug_global_lock);
    hgp->app_under_boot = val;
    FUNC2(&hgp->hotplug_global_lock);
}