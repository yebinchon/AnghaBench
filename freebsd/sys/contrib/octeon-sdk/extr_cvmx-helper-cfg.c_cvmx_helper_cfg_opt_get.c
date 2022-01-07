
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t cvmx_helper_cfg_option_t ;


 int CVMX_HELPER_CFG_INVALID_VALUE ;
 size_t CVMX_HELPER_CFG_OPT_MAX ;
 int * cvmx_cfg_opts ;

uint64_t cvmx_helper_cfg_opt_get(cvmx_helper_cfg_option_t opt)
{
    if (opt >= CVMX_HELPER_CFG_OPT_MAX)
        return (uint64_t)CVMX_HELPER_CFG_INVALID_VALUE;

    return cvmx_cfg_opts[opt];
}
