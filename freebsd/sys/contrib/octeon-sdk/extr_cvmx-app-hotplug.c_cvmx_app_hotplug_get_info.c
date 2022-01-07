
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ coremask; scalar_t__ valid; } ;
typedef TYPE_1__ cvmx_app_hotplug_info_t ;
struct TYPE_6__ {TYPE_1__* hotplug_info_array; } ;
typedef TYPE_2__ cvmx_app_hotplug_global_t ;


 int CVMX_APP_HOTPLUG_MAX_APPS ;
 TYPE_2__* cvmx_app_get_hotplug_global_ptr () ;
 int printf (char*,int,unsigned int,unsigned int) ;

cvmx_app_hotplug_info_t* cvmx_app_hotplug_get_info(uint32_t coremask)
{
    cvmx_app_hotplug_info_t *hip;
    cvmx_app_hotplug_global_t *hgp;
    int i;
    int dbg = 0;




    hgp = cvmx_app_get_hotplug_global_ptr();
    if (!hgp) return ((void*)0);
    hip = hgp->hotplug_info_array;


    for (i=0; i<CVMX_APP_HOTPLUG_MAX_APPS; i++)
    {
        if (hip[i].coremask == coremask)
        {
     if (dbg)
                printf("cvmx_app_hotplug_get_info(): coremask match %d -- coremask 0x%x, valid %d\n", i, (unsigned int)hip[i].coremask, (unsigned int)hip[i].valid);
            return &hip[i];
        }
    }
    return ((void*)0);
}
