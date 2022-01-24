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
struct TYPE_3__ {int /*<<< orphan*/  hotplug_global_lock; scalar_t__ app_under_shutdown; scalar_t__ app_under_boot; } ;
typedef  TYPE_1__ cvmx_app_hotplug_global_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
    int ret=0;
    cvmx_app_hotplug_global_t *hgp;

    hgp = FUNC0();
    FUNC1(&hgp->hotplug_global_lock);
    if (hgp->app_under_boot || hgp->app_under_shutdown) ret=1;
    FUNC2(&hgp->hotplug_global_lock);
    return ret;

}