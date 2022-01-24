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
struct ath_hal_9300 {int ah_wa_reg_val; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_GEN_TIMERS2_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RX_MSG_EN ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE_EN ; 
 int /*<<< orphan*/  AR_RTC_RESET ; 
 int /*<<< orphan*/  AR_RTC_RESET_EN ; 
 int /*<<< orphan*/  AR_SLP32_INC ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int /*<<< orphan*/  AR_STA_ID1_PWR_SAV ; 
 int /*<<< orphan*/  AR_TIMER_MODE ; 
 int /*<<< orphan*/  AR_WA ; 
 int AR_WA_D3_TO_L1_DISABLE ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HAL_WOW_OFFLOAD_SET_4004_BIT14 ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(struct ath_hal *ah, int set_chip)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);

    FUNC9(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);
    if (set_chip ) {
        if (FUNC3(ah) || FUNC2(ah)) {
            FUNC10(ah, AR_TIMER_MODE,
                    FUNC8(ah, AR_TIMER_MODE) & 0xFFFFFF00);
            FUNC10(ah, AR_GEN_TIMERS2_MODE,
                    FUNC8(ah, AR_GEN_TIMERS2_MODE) & 0xFFFFFF00);
            FUNC10(ah, AR_SLP32_INC,
                    FUNC8(ah, AR_SLP32_INC) & 0xFFF00000);
            FUNC10(ah, AR_MCI_INTERRUPT_RX_MSG_EN, 0);
            FUNC6(100);
        }
        /* Clear the RTC force wake bit to allow the mac to go to sleep */
        FUNC7(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN);

        if (FUNC3(ah) || FUNC2(ah)) {
            /*
             * In Jupiter, after enter sleep mode, hardware will send
             * a SYS_SLEEPING message through MCI interface. Add a
             * few us delay to make sure the message can reach BT side.
             */
            FUNC6(100);
        }

        if (!FUNC4(ah)) {
            /* Shutdown chip. Active low */
            FUNC7(ah, AR_RTC_RESET, AR_RTC_RESET_EN);
            /* Settle time */
            FUNC6(2);
        }
    }

#if ATH_WOW_OFFLOAD
    if (!AR_SREV_JUPITER(ah) || !HAL_WOW_CTRL(ah, HAL_WOW_OFFLOAD_SET_4004_BIT14))
#endif /* ATH_WOW_OFFLOAD */
    {
        /* Clear Bit 14 of AR_WA after putting chip into Full Sleep mode. */
        FUNC10(ah, FUNC1(ah, AR_WA),
               ahp->ah_wa_reg_val & ~AR_WA_D3_TO_L1_DISABLE);
    }
}