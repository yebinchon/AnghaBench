
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {unsigned long long core_mask; } ;
typedef TYPE_1__ cvmx_sysinfo_t ;
struct TYPE_5__ {unsigned long long hplugged_cores; unsigned long long hotplug_activated_coremask; int coremask; int valid; } ;


 int CVMX_IRQ_MBOX0 ;
 int __cvmx_app_hotplug_sync () ;
 TYPE_3__* cvmx_app_hotplug_info_ptr ;
 int cvmx_app_hotplug_lock ;
 unsigned long long cvmx_get_core_num () ;
 int cvmx_interrupt_unmask_irq (int ) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int printf (char*,...) ;

int cvmx_app_hotplug_activate(void)
{
    uint64_t cnt = 0;
    uint64_t cnt_interval = 10000000;

    while (!cvmx_app_hotplug_info_ptr)
    {
        cnt++;
        if ((cnt % cnt_interval) == 0)
            printf("waiting for cnt=%lld\n", (unsigned long long)cnt);
    }

    if (cvmx_app_hotplug_info_ptr->hplugged_cores & (1ull << cvmx_get_core_num()))
    {



        cvmx_sysinfo_t *sys_info_ptr = cvmx_sysinfo_get();
        sys_info_ptr->core_mask |= 1ull << cvmx_get_core_num();
    }
    else
    {
        __cvmx_app_hotplug_sync();
    }
    cvmx_spinlock_lock(&cvmx_app_hotplug_lock);
    if (!cvmx_app_hotplug_info_ptr)
    {
        cvmx_spinlock_unlock(&cvmx_app_hotplug_lock);
        printf("ERROR: This application is not registered for hotplug\n");
        return -1;
    }

    cvmx_interrupt_unmask_irq(CVMX_IRQ_MBOX0);
    cvmx_app_hotplug_info_ptr->hotplug_activated_coremask |= (1ull<<cvmx_get_core_num());







    cvmx_spinlock_unlock(&cvmx_app_hotplug_lock);

    return 0;
}
