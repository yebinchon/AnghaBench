
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int CVMX_MAX_CORES ;
 int CVMX_PTH_AVAILABLE ;
 scalar_t__ cvmx_power_throttle_set_powlim (int,int ) ;

int cvmx_power_throttle(uint8_t percentage, uint64_t coremask)
{
    int ppid;
    int ret;

    if (!CVMX_PTH_AVAILABLE)
        return -1;

    ret = 0;
    for (ppid = 0; ppid < CVMX_MAX_CORES; ppid++)
    {
        if ((((uint64_t) 1) << ppid) & coremask)
 {
            if (cvmx_power_throttle_set_powlim(ppid, percentage) == 0)
         ret = -2;
        }
    }

    return ret;
}
