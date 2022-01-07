
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CVMX_PTH_AVAILABLE ;
 int cvmx_get_core_num () ;
 scalar_t__ cvmx_power_throttle_set_powlim (int ,int ) ;

int cvmx_power_throttle_self(uint8_t percentage)
{
    if (!CVMX_PTH_AVAILABLE)
        return -1;

    if (cvmx_power_throttle_set_powlim(cvmx_get_core_num(),
        percentage) == 0)
 return -1;

    return 0;
}
