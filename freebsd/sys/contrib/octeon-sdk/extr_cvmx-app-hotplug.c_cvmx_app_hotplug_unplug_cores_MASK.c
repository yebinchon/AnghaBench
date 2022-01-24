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
typedef  int uint32_t ;
struct TYPE_4__ {int unplug_cores; int coremask; int /*<<< orphan*/  shutdown_done; int /*<<< orphan*/  shutdown_callback; } ;
typedef  TYPE_1__ cvmx_app_hotplug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CVMX_MAX_CORES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(int index, uint32_t coremask, int wait) 
{
    cvmx_app_hotplug_info_t *ai;
    int i;

    if (!(ai = FUNC2(index)))
    {
        FUNC4("\nERROR: Failed to get hotplug info for app at index=%d\n", index);
        return -1;
    }
    ai->unplug_cores = coremask;
#if 0
    if (!ai->shutdown_callback)
    {
        printf("\nERROR: Target application has not registered for hotplug!\n");
        return -1;
    }
#endif
    if ( (ai->coremask | coremask ) != ai->coremask)
    {
        FUNC4("\nERROR: Not all cores requested are a part of the app "
               "r=%08x:%08x\n", (unsigned int)coremask, (unsigned int)ai->coremask);
        return -1;
    }
    if (ai->coremask == coremask)
    {
        FUNC4("\nERROR: Trying to remove all cores in app. "
               "r=%08x:%08x\n", (unsigned int)coremask, (unsigned int)ai->coremask);
        return -1;
    }
    /* Send IPIs to all application cores to request unplug/remove_cores
       callback */
    for (i=0; i<CVMX_MAX_CORES; i++) {
            if (ai->coremask & (1ull<<i))
                FUNC3(FUNC0(i), 2);
    }

#if 0
    if (wait)
    {
        while (!ai->shutdown_done);    

        /* Clean up the hotplug info region for this application */
        bzero(ai, sizeof(*ai));
    }
#endif
    return 0;
}