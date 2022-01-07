
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int* alarm_polarity; struct TYPE_3__* p_RtcDriverParam; } ;
typedef TYPE_1__ t_FmRtc ;
typedef int t_Error ;
typedef enum fman_rtc_alarm_polarity { ____Placeholder_fman_rtc_alarm_polarity } fman_rtc_alarm_polarity ;
typedef scalar_t__ e_FmRtcAlarmPolarity ;


 int E_INVALID_HANDLE ;
 int E_INVALID_SELECTION ;
 int E_INVALID_STATE ;
 int E_OK ;
 size_t FM_RTC_NUM_OF_ALARMS ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_RTC_ConfigAlarmPolarity(t_Handle h_FmRtc,
                                   uint8_t alarmId,
                                   e_FmRtcAlarmPolarity alarmPolarity)
{
    t_FmRtc *p_Rtc = (t_FmRtc *)h_FmRtc;

    SANITY_CHECK_RETURN_ERROR(p_Rtc, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Rtc->p_RtcDriverParam, E_INVALID_STATE);

    if (alarmId >= FM_RTC_NUM_OF_ALARMS)
        RETURN_ERROR(MAJOR, E_INVALID_SELECTION, ("Alarm ID"));

    p_Rtc->p_RtcDriverParam->alarm_polarity[alarmId] =
        (enum fman_rtc_alarm_polarity)alarmPolarity;

    return E_OK;
}
