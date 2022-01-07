
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int (* f_FM_MAC_GetMaxFrameLength ) (scalar_t__) ;} ;
typedef TYPE_1__ t_FmMacControllerDriver ;


 int E_INVALID_HANDLE ;
 int E_NOT_SUPPORTED ;
 int MINOR ;
 int NO_MSG ;
 int REPORT_ERROR (int ,int ,int ) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int ) ;
 int stub1 (scalar_t__) ;

uint16_t FM_MAC_GetMaxFrameLength(t_Handle h_FmMac)
{
    t_FmMacControllerDriver *p_FmMacControllerDriver = (t_FmMacControllerDriver *)h_FmMac;

    SANITY_CHECK_RETURN_VALUE(p_FmMacControllerDriver, E_INVALID_HANDLE, 0);

    if (p_FmMacControllerDriver->f_FM_MAC_GetMaxFrameLength)
        return p_FmMacControllerDriver->f_FM_MAC_GetMaxFrameLength(h_FmMac);

    REPORT_ERROR(MINOR, E_NOT_SUPPORTED, NO_MSG);
    return 0;
}
