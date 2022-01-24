#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int coremask; int valid; void* shutdown_callback; void* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  core_mask; } ;

/* Variables and functions */
 void* FUNC0 (void (*) (void*)) ; 
 int /*<<< orphan*/  CVMX_IRQ_MBOX0 ; 
 int /*<<< orphan*/  __cvmx_app_hotplug_shutdown ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* cvmx_app_hotplug_info_ptr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(void(*fn)(void*), void* arg)
{
    /* Find the list of applications launched by bootoct utility. */

    if (!(cvmx_app_hotplug_info_ptr = FUNC1(FUNC3()->core_mask)))
    {
        /* Application not launched by bootoct? */
        FUNC4("ERROR: cmvx_app_hotplug_register() failed\n");
        return -1;
    }

    /* Register the callback */
    cvmx_app_hotplug_info_ptr->data = FUNC0(arg);
    cvmx_app_hotplug_info_ptr->shutdown_callback = FUNC0(fn);

#ifdef DEBUG
    printf("cvmx_app_hotplug_register(): coremask 0x%x valid %d\n", 
                  cvmx_app_hotplug_info_ptr->coremask, cvmx_app_hotplug_info_ptr->valid);
#endif

    FUNC2(CVMX_IRQ_MBOX0, __cvmx_app_hotplug_shutdown, NULL);

    return 0;
}