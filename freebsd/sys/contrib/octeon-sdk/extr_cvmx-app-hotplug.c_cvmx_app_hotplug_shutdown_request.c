
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long uint32_t ;
struct TYPE_4__ {unsigned long long shutdown_cores; unsigned long long hotplug_activated_coremask; int shutdown_done; int shutdown_callback; } ;
typedef TYPE_1__ cvmx_app_hotplug_info_t ;


 int CVMX_CIU_MBOX_SETX (int) ;
 int CVMX_MAX_CORES ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* cvmx_app_hotplug_get_info (unsigned long long) ;
 int cvmx_write_csr (int ,int) ;
 int printf (char*,...) ;

int cvmx_app_hotplug_shutdown_request(uint32_t coremask, int wait)
{
    int i;
    cvmx_app_hotplug_info_t *hotplug_info_ptr;

    if (!(hotplug_info_ptr = cvmx_app_hotplug_get_info(coremask)))
    {
        printf("\nERROR: Failed to get hotplug info for coremask: 0x%x\n", (unsigned int)coremask);
        return -1;
    }
    hotplug_info_ptr->shutdown_cores = coremask;
    if (!hotplug_info_ptr->shutdown_callback)
    {
        printf("\nERROR: Target application has not registered for hotplug!\n");
        return -1;
    }

    if (hotplug_info_ptr->hotplug_activated_coremask != coremask)
    {
        printf("\nERROR: Not all application cores have activated hotplug\n");
        return -1;
    }


    for (i=0; i<CVMX_MAX_CORES; i++) {
            if (coremask & (1ull<<i))
                cvmx_write_csr(CVMX_CIU_MBOX_SETX(i), 1);
    }

    if (wait)
    {
        while (!hotplug_info_ptr->shutdown_done);


        bzero(hotplug_info_ptr, sizeof(*hotplug_info_ptr));
    }

    return 0;
}
