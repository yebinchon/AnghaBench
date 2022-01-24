#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {unsigned long long core_mask; } ;
typedef  TYPE_1__ cvmx_sysinfo_t ;
struct TYPE_5__ {unsigned long long hplugged_cores; unsigned long long hotplug_activated_coremask; int coremask; int valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_IRQ_MBOX0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__* cvmx_app_hotplug_info_ptr ; 
 int /*<<< orphan*/  cvmx_app_hotplug_lock ; 
 unsigned long long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(void)
{
    uint64_t cnt = 0;
    uint64_t cnt_interval = 10000000;

    while (!cvmx_app_hotplug_info_ptr) 
    {
        cnt++;
        if ((cnt % cnt_interval) == 0)
            FUNC6("waiting for cnt=%lld\n", (unsigned long long)cnt);
    }

    if (cvmx_app_hotplug_info_ptr->hplugged_cores & (1ull << FUNC1()))
    {
#ifdef DEBUG
        printf("core=%d : is being hotplugged \n", cvmx_get_core_num());
#endif
        cvmx_sysinfo_t *sys_info_ptr = FUNC5();
        sys_info_ptr->core_mask |= 1ull << FUNC1();
    }
    else
    {
        FUNC0();
    }
    FUNC3(&cvmx_app_hotplug_lock);
    if (!cvmx_app_hotplug_info_ptr)
    {
        FUNC4(&cvmx_app_hotplug_lock);
        FUNC6("ERROR: This application is not registered for hotplug\n");
        return -1;
    }
    /* Enable the interrupt before we mark the core as activated */
    FUNC2(CVMX_IRQ_MBOX0);
    cvmx_app_hotplug_info_ptr->hotplug_activated_coremask |= (1ull<<FUNC1());

#ifdef DEBUG
    printf("cvmx_app_hotplug_activate(): coremask 0x%x valid %d sizeof %d\n", 
                 cvmx_app_hotplug_info_ptr->coremask, cvmx_app_hotplug_info_ptr->valid, 
                 sizeof(*cvmx_app_hotplug_info_ptr));
#endif

    FUNC4(&cvmx_app_hotplug_lock);

    return 0;
}