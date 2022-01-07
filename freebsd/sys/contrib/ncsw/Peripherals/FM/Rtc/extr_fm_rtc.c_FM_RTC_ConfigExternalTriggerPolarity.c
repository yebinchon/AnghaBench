
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int* trigger_polarity; struct TYPE_3__* p_RtcDriverParam; } ;
typedef TYPE_1__ t_FmRtc ;
typedef int t_Error ;
typedef enum fman_rtc_trigger_polarity { ____Placeholder_fman_rtc_trigger_polarity } fman_rtc_trigger_polarity ;
typedef scalar_t__ e_FmRtcTriggerPolarity ;


 int E_INVALID_HANDLE ;
 int E_INVALID_SELECTION ;
 int E_INVALID_STATE ;
 int E_OK ;
 size_t FM_RTC_NUM_OF_EXT_TRIGGERS ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_RTC_ConfigExternalTriggerPolarity(t_Handle h_FmRtc,
                                             uint8_t triggerId,
                                             e_FmRtcTriggerPolarity triggerPolarity)
{
    t_FmRtc *p_Rtc = (t_FmRtc *)h_FmRtc;

    SANITY_CHECK_RETURN_ERROR(p_Rtc, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Rtc->p_RtcDriverParam, E_INVALID_STATE);

    if (triggerId >= FM_RTC_NUM_OF_EXT_TRIGGERS)
    {
        RETURN_ERROR(MAJOR, E_INVALID_SELECTION, ("External trigger ID"));
    }

    p_Rtc->p_RtcDriverParam->trigger_polarity[triggerId] =
        (enum fman_rtc_trigger_polarity)triggerPolarity;

    return E_OK;
}
