
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ valid; } ;
typedef TYPE_1__ cvmx_app_hotplug_info_t ;
struct TYPE_8__ {TYPE_1__* hotplug_info_array; } ;
typedef TYPE_2__ cvmx_app_hotplug_global_t ;
struct TYPE_9__ {int base_addr; } ;


 int CVMX_APP_HOTPLUG_MAX_APPS ;
 TYPE_6__* block_desc ;
 TYPE_2__* cvmx_app_get_hotplug_global_ptr () ;
 int printf (char*,int ,TYPE_2__*) ;

cvmx_app_hotplug_info_t* cvmx_app_hotplug_get_info_at_index(int index)
{
    cvmx_app_hotplug_info_t *hip;
    cvmx_app_hotplug_global_t *hgp;

    hgp = cvmx_app_get_hotplug_global_ptr();
    if (!hgp) return ((void*)0);
    hip = hgp->hotplug_info_array;





    if (index < CVMX_APP_HOTPLUG_MAX_APPS)
    {
        if (hip[index].valid)
        {

            return &hip[index];
        }
    }
    return ((void*)0);
}
