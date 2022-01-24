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
typedef  unsigned long long uint32_t ;
struct TYPE_4__ {unsigned long long shutdown_cores; unsigned long long hotplug_activated_coremask; int /*<<< orphan*/  shutdown_done; int /*<<< orphan*/  shutdown_callback; } ;
typedef  TYPE_1__ cvmx_app_hotplug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CVMX_MAX_CORES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(uint32_t coremask, int wait) 
{
    int i;
    cvmx_app_hotplug_info_t *hotplug_info_ptr;

    if (!(hotplug_info_ptr = FUNC2(coremask)))
    {
        FUNC4("\nERROR: Failed to get hotplug info for coremask: 0x%x\n", (unsigned int)coremask);
        return -1;
    }
    hotplug_info_ptr->shutdown_cores = coremask;
    if (!hotplug_info_ptr->shutdown_callback)
    {
        FUNC4("\nERROR: Target application has not registered for hotplug!\n");
        return -1;
    }

    if (hotplug_info_ptr->hotplug_activated_coremask != coremask)
    {
        FUNC4("\nERROR: Not all application cores have activated hotplug\n");
        return -1;
    }

    /* Send IPIs to all application cores to request shutdown */
    for (i=0; i<CVMX_MAX_CORES; i++) {
            if (coremask & (1ull<<i))
                FUNC3(FUNC0(i), 1);
    }

    if (wait)
    {
        while (!hotplug_info_ptr->shutdown_done);    

        /* Clean up the hotplug info region for this application */
        FUNC1(hotplug_info_ptr, sizeof(*hotplug_info_ptr));
    }

    return 0;
}