
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef struct rtc_cfg* t_Handle ;
struct TYPE_4__ {int h_App; int baseAddress; int h_Fm; } ;
typedef TYPE_1__ t_FmRtcParams ;
struct rtc_cfg {int h_App; struct rtc_regs* p_MemMap; int clockPeriodNanoSec; int bypass; struct rtc_cfg* p_RtcDriverParam; int outputClockDivisor; int h_Fm; } ;
typedef struct rtc_cfg t_FmRtc ;
struct rtc_regs {int dummy; } ;


 int DEFAULT_BYPASS ;
 int DEFAULT_CLOCK_PERIOD ;
 int DEFAULT_OUTPUT_CLOCK_DIVISOR ;
 int E_NO_MEMORY ;
 int E_NULL_POINTER ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int *) ;
 scalar_t__ UINT_TO_PTR (int ) ;
 int XX_Free (struct rtc_cfg*) ;
 scalar_t__ XX_Malloc (int) ;
 int fman_rtc_defconfig (struct rtc_cfg*) ;
 int memset (struct rtc_cfg*,int ,int) ;

t_Handle FM_RTC_Config(t_FmRtcParams *p_FmRtcParam)
{
    t_FmRtc *p_Rtc;

    SANITY_CHECK_RETURN_VALUE(p_FmRtcParam, E_NULL_POINTER, ((void*)0));


    p_Rtc = (t_FmRtc *)XX_Malloc(sizeof(t_FmRtc));
    if (!p_Rtc)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM RTC driver structure"));
        return ((void*)0);
    }

    memset(p_Rtc, 0, sizeof(t_FmRtc));


    p_Rtc->p_RtcDriverParam = (struct rtc_cfg *)XX_Malloc(sizeof(struct rtc_cfg));
    if (!p_Rtc->p_RtcDriverParam)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM RTC driver parameters"));
        XX_Free(p_Rtc);
        return ((void*)0);
    }

    memset(p_Rtc->p_RtcDriverParam, 0, sizeof(struct rtc_cfg));


    p_Rtc->h_Fm = p_FmRtcParam->h_Fm;


    fman_rtc_defconfig(p_Rtc->p_RtcDriverParam);

    p_Rtc->outputClockDivisor = DEFAULT_OUTPUT_CLOCK_DIVISOR;
    p_Rtc->p_RtcDriverParam->bypass = DEFAULT_BYPASS;
    p_Rtc->clockPeriodNanoSec = DEFAULT_CLOCK_PERIOD;



    p_Rtc->p_MemMap = (struct rtc_regs *)UINT_TO_PTR(p_FmRtcParam->baseAddress);
    p_Rtc->h_App = p_FmRtcParam->h_App;

    return p_Rtc;
}
