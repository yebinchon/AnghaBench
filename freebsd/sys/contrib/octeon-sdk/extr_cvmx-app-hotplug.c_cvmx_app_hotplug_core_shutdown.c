
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int core_mask; } ;
typedef TYPE_1__ cvmx_sysinfo_t ;
struct TYPE_6__ {int shutdown_done; scalar_t__ shutdown_cores; } ;


 int __cvmx_app_hotplug_reset () ;
 int __cvmx_app_hotplug_sync () ;
 int bzero (TYPE_3__*,int) ;
 TYPE_3__* cvmx_app_hotplug_info_ptr ;
 int cvmx_app_hotplug_remove_self_from_core_mask () ;
 scalar_t__ cvmx_coremask_first_core (int ) ;
 int cvmx_debug_finish () ;
 int cvmx_interrupt_disable_save () ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int cvmx_sysinfo_remove_self_from_core_mask () ;
 int printf (char*) ;

void cvmx_app_hotplug_core_shutdown(void)
{
    uint32_t flags;
    if (cvmx_app_hotplug_info_ptr->shutdown_cores)
    {
        cvmx_sysinfo_t *sys_info_ptr = cvmx_sysinfo_get();
       __cvmx_app_hotplug_sync();
        if (cvmx_coremask_first_core(sys_info_ptr->core_mask))
        {
            bzero(cvmx_app_hotplug_info_ptr,
                  sizeof(*cvmx_app_hotplug_info_ptr));



            cvmx_app_hotplug_info_ptr->shutdown_done = 1;
        }

        cvmx_debug_finish ();
        flags = cvmx_interrupt_disable_save();
        __cvmx_app_hotplug_sync();

        __cvmx_app_hotplug_reset();
    }
    else
    {
        cvmx_sysinfo_remove_self_from_core_mask();
        cvmx_app_hotplug_remove_self_from_core_mask();
        flags = cvmx_interrupt_disable_save();
        __cvmx_app_hotplug_reset();
    }
}
