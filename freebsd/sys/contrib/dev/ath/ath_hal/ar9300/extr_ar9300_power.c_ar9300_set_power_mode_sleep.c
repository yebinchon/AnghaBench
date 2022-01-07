
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int ah_wa_reg_val; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_GEN_TIMERS2_MODE ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_MCI_INTERRUPT_RX_MSG_EN ;
 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_RESET ;
 int AR_RTC_RESET_EN ;
 int AR_SLP32_INC ;
 scalar_t__ AR_SREV_APHRODITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_JUPITER (struct ath_hal*) ;
 int AR_SREV_JUPITER_10 (struct ath_hal*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PWR_SAV ;
 int AR_TIMER_MODE ;
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
ar9300_set_power_mode_sleep(struct ath_hal *ah, int set_chip)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    OS_REG_SET_BIT(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);
    if (set_chip ) {
        if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {
            OS_REG_WRITE(ah, AR_TIMER_MODE,
                    OS_REG_READ(ah, AR_TIMER_MODE) & 0xFFFFFF00);
            OS_REG_WRITE(ah, AR_GEN_TIMERS2_MODE,
                    OS_REG_READ(ah, AR_GEN_TIMERS2_MODE) & 0xFFFFFF00);
            OS_REG_WRITE(ah, AR_SLP32_INC,
                    OS_REG_READ(ah, AR_SLP32_INC) & 0xFFF00000);
            OS_REG_WRITE(ah, AR_MCI_INTERRUPT_RX_MSG_EN, 0);
            OS_DELAY(100);
        }

        OS_REG_CLR_BIT(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN);

        if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {





            OS_DELAY(100);
        }

        if (!AR_SREV_JUPITER_10(ah)) {

            OS_REG_CLR_BIT(ah, AR_RTC_RESET, AR_RTC_RESET_EN);

            OS_DELAY(2);
        }
    }




    {

        OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_WA),
               ahp->ah_wa_reg_val & ~AR_WA_D3_TO_L1_DISABLE);
    }
}
