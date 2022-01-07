
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int ah_gpio_select; scalar_t__ ah_polarity; scalar_t__ ah_gpio_bit; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_GPIO_INPUT_EN_VAL ;
 int AR_GPIO_INPUT_EN_VAL_RFSILENT_BB ;
 int AR_GPIO_INPUT_MUX2 ;
 int AR_GPIO_INPUT_MUX2_RFSILENT ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_PHY_TEST ;
 int AR_RFSILENT ;
 int AR_RFSILENT_FORCE ;
 scalar_t__ AR_SREV_APHRODITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_JUPITER (struct ath_hal*) ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;
 int RFSILENT_BB ;
 scalar_t__ ar9300_gpio_get (struct ath_hal*,int) ;
 int ar9300_gpio_set_intr (struct ath_hal*,int,int) ;
 int ath_hal_gpioCfgInput (struct ath_hal*,int) ;
 scalar_t__ ath_hal_hasrfkill_int (struct ath_hal*) ;

void
ar9300_enable_rf_kill(struct ath_hal *ah)
{



    struct ath_hal_9300 *ahp = AH9300(ah);

    if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {

     if (ar9300_gpio_get(ah, ahp->ah_gpio_select) == ahp->ah_polarity) {
            OS_REG_SET_BIT(ah, AR_HOSTIF_REG(ah, AR_RFSILENT),
                           AR_RFSILENT_FORCE);
            OS_REG_SET_BIT(ah, AR_PHY_TEST, RFSILENT_BB);
        }
        else {
            OS_REG_CLR_BIT(ah, AR_HOSTIF_REG(ah, AR_RFSILENT),
                           AR_RFSILENT_FORCE);
            OS_REG_CLR_BIT(ah, AR_PHY_TEST, RFSILENT_BB);
        }
    }
    else {

        OS_REG_SET_BIT(ah, AR_HOSTIF_REG(ah, AR_GPIO_INPUT_EN_VAL),
            AR_GPIO_INPUT_EN_VAL_RFSILENT_BB);


        OS_REG_CLR_BIT(ah, AR_HOSTIF_REG(ah, AR_GPIO_INPUT_MUX2),
            AR_GPIO_INPUT_MUX2_RFSILENT);
        OS_REG_SET_BIT(ah, AR_HOSTIF_REG(ah, AR_GPIO_INPUT_MUX2),
            (ahp->ah_gpio_select & 0x0f) << 4);





        ath_hal_gpioCfgInput(ah, ahp->ah_gpio_select);
        OS_REG_SET_BIT(ah, AR_PHY_TEST, RFSILENT_BB);
    }
    if (ath_hal_hasrfkill_int(ah)) {
        if (ahp->ah_gpio_bit == ar9300_gpio_get(ah, ahp->ah_gpio_select)) {

            ar9300_gpio_set_intr(ah, ahp->ah_gpio_select, !ahp->ah_gpio_bit);
        } else {
            ar9300_gpio_set_intr(ah, ahp->ah_gpio_select, ahp->ah_gpio_bit);
        }
    }
}
