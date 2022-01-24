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
struct ath_hal_9300 {scalar_t__ ah_chip_reset_done; int /*<<< orphan*/  nf_tsf32; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_ENABLE_NF ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_NF ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_NO_UPDATE_NF ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 

__attribute__((used)) static void
FUNC3(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    FUNC1(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_ENABLE_NF);
    FUNC1(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_NO_UPDATE_NF);
    FUNC1(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_NF);
    FUNC0(ah)->nf_tsf32 = FUNC2(ah);

/*  
 *  We are reading the NF values before we start the NF operation, because
 *  of that we are getting very high values like -45.
 *  This triggers the CW_INT detected and EACS module triggers the channel change
 *  chip_reset_done value is used to fix this issue.
 *  chip_reset_flag is set during the RTC reset.
 *  chip_reset_flag is cleared during the starting NF operation.
 *  if flag is set we will clear the flag and will not read the NF values.
 */
    ahp->ah_chip_reset_done = 0;    
}