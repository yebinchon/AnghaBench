
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal_9300 {int ah_wa_reg_val; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halAutoSleepSupport; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;
typedef TYPE_1__ HAL_CAPABILITIES ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_MCI_INTERRUPT_RX_HW_MSG_MASK ;
 int AR_MCI_INTERRUPT_RX_MSG_EN ;
 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_FORCE_WAKE_ON_INT ;
 scalar_t__ AR_SREV_APHRODITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_JUPITER (struct ath_hal*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PWR_SAV ;
 int AR_WA ;
 int AR_WA_D3_TO_L1_DISABLE ;
 int HAL_WOW_CTRL (struct ath_hal*,int ) ;
 int HAL_WOW_OFFLOAD_SET_4004_BIT14 ;
 int OS_DELAY (int) ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar9300_set_power_mode_network_sleep(struct ath_hal *ah, int set_chip)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    OS_REG_SET_BIT(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);
    if (set_chip) {
        HAL_CAPABILITIES *p_cap = &AH_PRIVATE(ah)->ah_caps;

        if (! p_cap->halAutoSleepSupport) {

            OS_REG_WRITE(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_ON_INT);
        }
        else {
            if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {
                OS_REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_EN,
                        OS_REG_READ(ah, AR_MCI_INTERRUPT_RX_MSG_EN) &
                                    ~AR_MCI_INTERRUPT_RX_HW_MSG_MASK);
            }


            OS_REG_CLR_BIT(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN);

            if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {





                OS_DELAY(30);
            }
        }
    }




    {

        OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_WA),
               ahp->ah_wa_reg_val & ~AR_WA_D3_TO_L1_DISABLE);
    }
}
