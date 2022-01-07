
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long coremask; } ;
typedef TYPE_1__ cvmx_app_hotplug_info_t ;


 int CVMX_CIU_MBOX_SETX (int) ;
 int CVMX_MAX_CORES ;
 TYPE_1__* cvmx_app_hotplug_get_info_at_index (int) ;
 int cvmx_write_csr (int ,int) ;
 int printf (char*,int) ;

int cvmx_app_hotplug_call_add_cores_callback(int index)
{
    cvmx_app_hotplug_info_t *ai;
    int i;
    if (!(ai = cvmx_app_hotplug_get_info_at_index(index)))
    {
        printf("\nERROR: Failed to get hotplug info for app at index=%d\n", index);
        return -1;
    }

    for (i=0; i<CVMX_MAX_CORES; i++) {
            if (ai->coremask & (1ull<<i))
                cvmx_write_csr(CVMX_CIU_MBOX_SETX(i), 4);
    }
    return 0;
}
