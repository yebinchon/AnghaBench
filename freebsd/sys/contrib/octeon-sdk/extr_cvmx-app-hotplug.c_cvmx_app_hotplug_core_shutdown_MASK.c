#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  core_mask; } ;
typedef  TYPE_1__ cvmx_sysinfo_t ;
struct TYPE_6__ {int shutdown_done; scalar_t__ shutdown_cores; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 TYPE_3__* cvmx_app_hotplug_info_ptr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(void)
{
    uint32_t flags;
    if (cvmx_app_hotplug_info_ptr->shutdown_cores)
    {
        cvmx_sysinfo_t *sys_info_ptr = FUNC7();
       FUNC1();
        if (FUNC4(sys_info_ptr->core_mask))
        {
            FUNC2(cvmx_app_hotplug_info_ptr,
                  sizeof(*cvmx_app_hotplug_info_ptr));
            #ifdef DEBUG
            printf("__cvmx_app_hotplug_shutdown(): setting shutdown done! \n");
            #endif
            cvmx_app_hotplug_info_ptr->shutdown_done = 1;
        }
        /* Tell the debugger that this application is finishing.  */
        FUNC5 ();
        flags = FUNC6();
        FUNC1();
        /* Reset the core */
        FUNC0();
    }
    else
    {
        FUNC8();
        FUNC3();
        flags = FUNC6();
        FUNC0();
    }
}