
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hotplug_activated_coremask; } ;
typedef TYPE_1__ cvmx_app_hotplug_info_t ;


 TYPE_1__* cvmx_app_hotplug_get_info_at_index (int) ;
 int printf (char*,int) ;

int is_app_hotpluggable(int index)
{
    cvmx_app_hotplug_info_t *ai;

    if (!(ai = cvmx_app_hotplug_get_info_at_index(index)))
    {
        printf("\nERROR: Failed to get hotplug info for app at index=%d\n", index);
        return -1;
    }
    if (ai->hotplug_activated_coremask) return 1;
    return 0;
}
