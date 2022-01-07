
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int shutdown_done; } ;
typedef TYPE_1__ cvmx_app_hotplug_info_t ;


 int bzero (TYPE_1__*,int) ;
 TYPE_1__* cvmx_app_hotplug_get_info (scalar_t__) ;
 int printf (char*,unsigned int) ;

int cvmx_app_hotplug_shutdown_complete(uint32_t coremask)
{
    cvmx_app_hotplug_info_t *hotplug_info_ptr;

    if (!(hotplug_info_ptr = cvmx_app_hotplug_get_info(coremask)))
    {
        printf("\nERROR: Failed to get hotplug info for coremask: 0x%x\n", (unsigned int)coremask);
        return -1;
    }

    while(!hotplug_info_ptr->shutdown_done);


    bzero(hotplug_info_ptr, sizeof(*hotplug_info_ptr));

    return 0;
}
