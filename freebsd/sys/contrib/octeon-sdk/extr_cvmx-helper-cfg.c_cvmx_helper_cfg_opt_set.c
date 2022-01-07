
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t cvmx_helper_cfg_option_t ;


 size_t CVMX_HELPER_CFG_OPT_MAX ;
 int * cvmx_cfg_opts ;

int cvmx_helper_cfg_opt_set(cvmx_helper_cfg_option_t opt, uint64_t val)
{
    if (opt >= CVMX_HELPER_CFG_OPT_MAX)
        return -1;

    cvmx_cfg_opts[opt] = val;

    return 0;
}
