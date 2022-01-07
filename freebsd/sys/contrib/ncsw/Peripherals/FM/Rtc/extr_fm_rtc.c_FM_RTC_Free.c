
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int h_Fm; struct TYPE_4__* p_RtcDriverParam; } ;
typedef TYPE_1__ t_FmRtc ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FM_RTC_Disable (scalar_t__) ;
 int FmUnregisterIntr (int ,int ,int ,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int XX_Free (TYPE_1__*) ;
 int e_FM_INTR_TYPE_NORMAL ;
 int e_FM_MOD_TMR ;

t_Error FM_RTC_Free(t_Handle h_FmRtc)
{
    t_FmRtc *p_Rtc = (t_FmRtc *)h_FmRtc;

    SANITY_CHECK_RETURN_ERROR(p_Rtc, E_INVALID_HANDLE);

    if (p_Rtc->p_RtcDriverParam)
    {
        XX_Free(p_Rtc->p_RtcDriverParam);
    }
    else
    {
        FM_RTC_Disable(h_FmRtc);
    }


    FmUnregisterIntr(p_Rtc->h_Fm, e_FM_MOD_TMR, 0, e_FM_INTR_TYPE_NORMAL);
    XX_Free(p_Rtc);

    return E_OK;
}
