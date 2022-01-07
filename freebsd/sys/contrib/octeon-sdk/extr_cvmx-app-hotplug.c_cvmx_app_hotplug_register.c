
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int coremask; int valid; void* shutdown_callback; void* data; } ;
struct TYPE_4__ {int core_mask; } ;


 void* CAST64 (void (*) (void*)) ;
 int CVMX_IRQ_MBOX0 ;
 int __cvmx_app_hotplug_shutdown ;
 TYPE_2__* cvmx_app_hotplug_get_info (int ) ;
 TYPE_2__* cvmx_app_hotplug_info_ptr ;
 int cvmx_interrupt_register (int ,int ,int *) ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int printf (char*,...) ;

int cvmx_app_hotplug_register(void(*fn)(void*), void* arg)
{


    if (!(cvmx_app_hotplug_info_ptr = cvmx_app_hotplug_get_info(cvmx_sysinfo_get()->core_mask)))
    {

        printf("ERROR: cmvx_app_hotplug_register() failed\n");
        return -1;
    }


    cvmx_app_hotplug_info_ptr->data = CAST64(arg);
    cvmx_app_hotplug_info_ptr->shutdown_callback = CAST64(fn);






    cvmx_interrupt_register(CVMX_IRQ_MBOX0, __cvmx_app_hotplug_shutdown, ((void*)0));

    return 0;
}
