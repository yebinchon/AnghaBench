#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath_hal_9300 {int ah_wa_reg_val; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  halAutoSleepSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef  TYPE_1__ HAL_CAPABILITIES ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int AR_MCI_INTERRUPT_RX_HW_MSG_MASK ; 
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RX_MSG_EN ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE_EN ; 
 int AR_RTC_FORCE_WAKE_ON_INT ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int /*<<< orphan*/  AR_STA_ID1_PWR_SAV ; 
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
    if (set_chip) {
        HAL_CAPABILITIES *p_cap = &FUNC1(ah)->ah_caps;

        if (! p_cap->halAutoSleepSupport) {
            /* Set wake_on_interrupt bit; clear force_wake bit */
            FUNC10(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_ON_INT);
        }
        else {
            /*
             * When chip goes into network sleep, it could be waken up by
             * MCI_INT interrupt caused by BT's HW messages (LNA_xxx, CONT_xxx)
             * which chould be in a very fast rate (~100us). This will cause
             * chip to leave and re-enter network sleep mode frequently, which
             * in consequence will have WLAN MCI HW to generate lots of
             * SYS_WAKING and SYS_SLEEPING messages which will make BT CPU
             * to busy to process.
             */
            if (FUNC4(ah) || FUNC3(ah)) {
                FUNC10(ah, AR_MCI_INTERRUPT_RX_MSG_EN,
                        FUNC8(ah, AR_MCI_INTERRUPT_RX_MSG_EN) &
                                    ~AR_MCI_INTERRUPT_RX_HW_MSG_MASK);
            }

            /* Clear the RTC force wake bit to allow the mac to go to sleep */
            FUNC7(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN);

            if (FUNC4(ah) || FUNC3(ah)) {
                /*
                 * In Jupiter, after enter sleep mode, hardware will send
                 * a SYS_SLEEPING message through MCI interface. Add a
                 * few us delay to make sure the message can reach BT side.
                 */
                FUNC6(30);
            }
        }
    }

#if ATH_WOW_OFFLOAD
    if (!AR_SREV_JUPITER(ah) || !HAL_WOW_CTRL(ah, HAL_WOW_OFFLOAD_SET_4004_BIT14))
#endif /* ATH_WOW_OFFLOAD */
    {
        /* Clear Bit 14 of AR_WA after putting chip into Sleep mode. */
        FUNC10(ah, FUNC2(ah, AR_WA),
               ahp->ah_wa_reg_val & ~AR_WA_D3_TO_L1_DISABLE);
    }
}