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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ coremask; scalar_t__ valid; } ;
typedef  TYPE_1__ cvmx_app_hotplug_info_t ;
struct TYPE_5__ {TYPE_1__* hotplug_info_array; } ;
typedef  TYPE_2__ cvmx_app_hotplug_global_t ;

/* Variables and functions */
 int CVMX_APP_HOTPLUG_MAX_APPS ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int,unsigned int) ; 

int FUNC2(uint32_t coremask)
{
    cvmx_app_hotplug_info_t *hip;
    cvmx_app_hotplug_global_t *hgp;
    int i;
    int dbg = 0;

#ifdef DEBUG
    dbg = 1;
#endif
    hgp = FUNC0();
    if (!hgp) return -1;
    hip = hgp->hotplug_info_array;

    /* Look for the current app's info */
    for (i=0; i<CVMX_APP_HOTPLUG_MAX_APPS; i++)
    {
        if (hip[i].coremask == coremask)
        {
	    if (dbg)
                FUNC1("cvmx_app_hotplug_get_info(): coremask match %d -- coremask 0x%x valid %d\n", i, (unsigned int)hip[i].coremask, (unsigned int)hip[i].valid);
	    return i;
        }
    }
    return -1;
}