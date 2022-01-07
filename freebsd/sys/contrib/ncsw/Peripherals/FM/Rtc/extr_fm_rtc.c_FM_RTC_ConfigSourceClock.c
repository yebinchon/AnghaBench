
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int src_clk; int ext_src_clk_freq; struct TYPE_3__* p_RtcDriverParam; } ;
typedef TYPE_1__ t_FmRtc ;
typedef int t_Error ;
typedef enum fman_src_clock { ____Placeholder_fman_src_clock } fman_src_clock ;
typedef scalar_t__ e_FmSrcClk ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 scalar_t__ e_FM_RTC_SOURCE_CLOCK_SYSTEM ;

t_Error FM_RTC_ConfigSourceClock(t_Handle h_FmRtc,
                                    e_FmSrcClk srcClk,
                                    uint32_t freqInMhz)
{
    t_FmRtc *p_Rtc = (t_FmRtc *)h_FmRtc;

    SANITY_CHECK_RETURN_ERROR(p_Rtc, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Rtc->p_RtcDriverParam, E_INVALID_STATE);

    p_Rtc->p_RtcDriverParam->src_clk = (enum fman_src_clock)srcClk;
    if (srcClk != e_FM_RTC_SOURCE_CLOCK_SYSTEM)
        p_Rtc->p_RtcDriverParam->ext_src_clk_freq = freqInMhz;

    return E_OK;
}
