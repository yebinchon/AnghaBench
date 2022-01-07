
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int (* f_FM_MAC_SetStatistics ) (scalar_t__,int ) ;} ;
typedef TYPE_1__ t_FmMacControllerDriver ;
typedef int t_Error ;
typedef int e_FmMacStatisticsLevel ;


 int E_INVALID_HANDLE ;
 int E_NOT_SUPPORTED ;
 int MINOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int stub1 (scalar_t__,int ) ;

t_Error FM_MAC_SetStatistics (t_Handle h_FmMac, e_FmMacStatisticsLevel statisticsLevel)
{
    t_FmMacControllerDriver *p_FmMacControllerDriver = (t_FmMacControllerDriver *)h_FmMac;

    SANITY_CHECK_RETURN_ERROR(p_FmMacControllerDriver, E_INVALID_HANDLE);

    if (p_FmMacControllerDriver->f_FM_MAC_SetStatistics)
        return p_FmMacControllerDriver->f_FM_MAC_SetStatistics(h_FmMac, statisticsLevel);

    RETURN_ERROR(MINOR, E_NOT_SUPPORTED, NO_MSG);
}
