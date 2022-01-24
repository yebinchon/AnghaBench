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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  shutdown_done; } ;
typedef  TYPE_1__ cvmx_app_hotplug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 

int FUNC3(uint32_t coremask)
{
    cvmx_app_hotplug_info_t *hotplug_info_ptr;

    if (!(hotplug_info_ptr = FUNC1(coremask)))
    {
        FUNC2("\nERROR: Failed to get hotplug info for coremask: 0x%x\n", (unsigned int)coremask);
        return -1;
    }

    while(!hotplug_info_ptr->shutdown_done);

    /* Clean up the hotplug info region for this app */
    FUNC0(hotplug_info_ptr, sizeof(*hotplug_info_ptr));

    return 0;
}