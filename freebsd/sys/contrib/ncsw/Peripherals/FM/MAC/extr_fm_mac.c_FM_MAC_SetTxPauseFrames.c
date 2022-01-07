
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int (* f_FM_MAC_SetTxPauseFrames ) (scalar_t__,int ,int ,int ) ;} ;
typedef TYPE_1__ t_FmMacControllerDriver ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_NOT_SUPPORTED ;
 int MAJOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int stub1 (scalar_t__,int ,int ,int ) ;

t_Error FM_MAC_SetTxPauseFrames(t_Handle h_FmMac,
                                uint8_t priority,
                                uint16_t pauseTime,
                                uint16_t threshTime)
{
    t_FmMacControllerDriver *p_FmMacControllerDriver = (t_FmMacControllerDriver *)h_FmMac;

    SANITY_CHECK_RETURN_ERROR(p_FmMacControllerDriver, E_INVALID_HANDLE);

    if (p_FmMacControllerDriver->f_FM_MAC_SetTxPauseFrames)
        return p_FmMacControllerDriver->f_FM_MAC_SetTxPauseFrames(h_FmMac,
                                                                  priority,
                                                                  pauseTime,
                                                                  threshTime);

    RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, NO_MSG);
}
