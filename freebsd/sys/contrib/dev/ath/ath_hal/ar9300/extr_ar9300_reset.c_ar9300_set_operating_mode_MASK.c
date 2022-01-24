#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CFG ; 
 int /*<<< orphan*/  AR_CFG_AP_ADHOC_INDICATION ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int AR_STA_ID1_ADHOC ; 
 int AR_STA_ID1_KSRCH_MODE ; 
 int AR_STA_ID1_STA_AP ; 
#define  HAL_M_HOSTAP 131 
#define  HAL_M_IBSS 130 
#define  HAL_M_MONITOR 129 
#define  HAL_M_STA 128 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct ath_hal *ah, int opmode)
{
    u_int32_t val;

    val = FUNC1(ah, AR_STA_ID1);
    val &= ~(AR_STA_ID1_STA_AP | AR_STA_ID1_ADHOC);
    switch (opmode) {
    case HAL_M_HOSTAP:
        FUNC3(ah, AR_STA_ID1,
            val | AR_STA_ID1_STA_AP | AR_STA_ID1_KSRCH_MODE);
        FUNC0(ah, AR_CFG, AR_CFG_AP_ADHOC_INDICATION);
        break;
    case HAL_M_IBSS:
        FUNC3(ah, AR_STA_ID1,
            val | AR_STA_ID1_ADHOC | AR_STA_ID1_KSRCH_MODE);
        FUNC2(ah, AR_CFG, AR_CFG_AP_ADHOC_INDICATION);
        break;
    case HAL_M_STA:
    case HAL_M_MONITOR:
        FUNC3(ah, AR_STA_ID1, val | AR_STA_ID1_KSRCH_MODE);
        break;
    }
}