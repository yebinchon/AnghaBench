#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {int /*<<< orphan*/  h_Fm; struct TYPE_4__* p_RtcDriverParam; } ;
typedef  TYPE_1__ t_FmRtc ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_NORMAL ; 
 int /*<<< orphan*/  e_FM_MOD_TMR ; 

t_Error FUNC4(t_Handle h_FmRtc)
{
    t_FmRtc *p_Rtc = (t_FmRtc *)h_FmRtc;

    FUNC2(p_Rtc, E_INVALID_HANDLE);

    if (p_Rtc->p_RtcDriverParam)
    {
        FUNC3(p_Rtc->p_RtcDriverParam);
    }
    else
    {
        FUNC0(h_FmRtc);
    }

    /* Unregister FM RTC interrupt */
    FUNC1(p_Rtc->h_Fm, e_FM_MOD_TMR, 0, e_FM_INTR_TYPE_NORMAL);
    FUNC3(p_Rtc);

    return E_OK;
}