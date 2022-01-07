
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int unplug_cores; int coremask; int shutdown_done; int shutdown_callback; } ;
typedef TYPE_1__ cvmx_app_hotplug_info_t ;


 int CVMX_CIU_MBOX_SETX (int) ;
 int CVMX_MAX_CORES ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* cvmx_app_hotplug_get_info_at_index (int) ;
 int cvmx_write_csr (int ,int) ;
 int printf (char*,...) ;

int cvmx_app_hotplug_unplug_cores(int index, uint32_t coremask, int wait)
{
    cvmx_app_hotplug_info_t *ai;
    int i;

    if (!(ai = cvmx_app_hotplug_get_info_at_index(index)))
    {
        printf("\nERROR: Failed to get hotplug info for app at index=%d\n", index);
        return -1;
    }
    ai->unplug_cores = coremask;







    if ( (ai->coremask | coremask ) != ai->coremask)
    {
        printf("\nERROR: Not all cores requested are a part of the app "
               "r=%08x:%08x\n", (unsigned int)coremask, (unsigned int)ai->coremask);
        return -1;
    }
    if (ai->coremask == coremask)
    {
        printf("\nERROR: Trying to remove all cores in app. "
               "r=%08x:%08x\n", (unsigned int)coremask, (unsigned int)ai->coremask);
        return -1;
    }


    for (i=0; i<CVMX_MAX_CORES; i++) {
            if (ai->coremask & (1ull<<i))
                cvmx_write_csr(CVMX_CIU_MBOX_SETX(i), 2);
    }
    return 0;
}
