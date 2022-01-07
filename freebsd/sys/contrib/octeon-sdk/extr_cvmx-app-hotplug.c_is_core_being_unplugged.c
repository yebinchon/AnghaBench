
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long unplug_cores; } ;


 TYPE_1__* cvmx_app_hotplug_info_ptr ;
 unsigned long long cvmx_get_core_num () ;

int is_core_being_unplugged(void)
{
    if (cvmx_app_hotplug_info_ptr->unplug_cores &
        (1ull << cvmx_get_core_num()))
        return 1;
    return 0;
}
