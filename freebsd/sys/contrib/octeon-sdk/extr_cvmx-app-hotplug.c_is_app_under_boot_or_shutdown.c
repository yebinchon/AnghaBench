
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hotplug_global_lock; scalar_t__ app_under_shutdown; scalar_t__ app_under_boot; } ;
typedef TYPE_1__ cvmx_app_hotplug_global_t ;


 TYPE_1__* cvmx_app_get_hotplug_global_ptr () ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;

int is_app_under_boot_or_shutdown(void)
{
    int ret=0;
    cvmx_app_hotplug_global_t *hgp;

    hgp = cvmx_app_get_hotplug_global_ptr();
    cvmx_spinlock_lock(&hgp->hotplug_global_lock);
    if (hgp->app_under_boot || hgp->app_under_shutdown) ret=1;
    cvmx_spinlock_unlock(&hgp->hotplug_global_lock);
    return ret;

}
