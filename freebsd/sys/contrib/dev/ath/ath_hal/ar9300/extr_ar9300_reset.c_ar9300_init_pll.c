
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ clk_25mhz; } ;
typedef int HAL_CHANNEL_INTERNAL ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 int AR_HORNET_CH0_DDR_DPLL2 ;
 int AR_HORNET_CH0_DDR_DPLL3 ;
 int AR_PHY_BB_DPLL1 ;
 int AR_PHY_BB_DPLL1_NFRAC ;
 int AR_PHY_BB_DPLL1_NINI ;
 int AR_PHY_BB_DPLL1_REFDIV ;
 int AR_PHY_BB_DPLL2 ;
 int AR_PHY_BB_DPLL2_EN_NEGTRIG ;
 int AR_PHY_BB_DPLL2_KD ;
 int AR_PHY_BB_DPLL2_KI ;
 int AR_PHY_BB_DPLL2_LOCAL_PLL ;
 int AR_PHY_BB_DPLL2_OUTDIV ;
 int AR_PHY_BB_DPLL2_PLL_PWD ;
 int AR_PHY_BB_DPLL3 ;
 int AR_PHY_BB_DPLL3_PHASE_SHIFT ;
 int AR_PHY_PLL_BB_DPLL3 ;
 int AR_PHY_PLL_BB_DPLL4 ;
 int AR_PHY_PLL_CONTROL ;
 int AR_PHY_PLL_MODE ;
 int AR_RTC_DERIVED_RTC_CLK ;
 int AR_RTC_FORCE_DERIVED_CLK ;
 int AR_RTC_PCIE_RST_PWDN_EN ;
 int AR_RTC_PLL_CLKSEL ;
 int AR_RTC_PLL_CONTROL ;
 int AR_RTC_PLL_CONTROL2 ;
 int AR_RTC_PLL_DIV ;
 int AR_RTC_PLL_REFDIV ;
 int AR_RTC_SLEEP_CLK ;
 int AR_SLP32_INC ;
 int AR_SLP32_MODE ;
 scalar_t__ AR_SREV_APHRODITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_HONEYBEE (struct ath_hal*) ;
 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int DPLL2_KD_VAL ;
 int DPLL2_KI_VAL ;
 int DPLL3_PHASE_SHIFT_VAL ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,struct ieee80211_channel*) ;
 scalar_t__ IS_CHAN_5GHZ (int *) ;
 scalar_t__ IS_CHAN_HALF_RATE (struct ieee80211_channel*) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (struct ieee80211_channel*) ;
 int OS_DELAY (int) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int RTC_PLL_SETTLE_DELAY ;
 int SM (int,int ) ;
 int * ath_hal_checkchannel (struct ath_hal*,struct ieee80211_channel*) ;

void
ar9300_init_pll(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t pll;
    u_int8_t clk_25mhz = AH9300(ah)->clk_25mhz;
    HAL_CHANNEL_INTERNAL *ichan = ((void*)0);

    if (chan)
        ichan = ath_hal_checkchannel(ah, chan);

    if (AR_SREV_HORNET(ah)) {
        if (clk_25mhz) {
            OS_REG_WRITE(ah, AR_HORNET_CH0_DDR_DPLL2, 0x18e82f01);


            OS_REG_RMW_FIELD(ah, AR_HORNET_CH0_DDR_DPLL3,
                AR_PHY_BB_DPLL3_PHASE_SHIFT, 0x1);

            OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, 0x1142c);
            OS_DELAY(1000);


            OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL2, 0xe04a3d);


            OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
                AR_PHY_BB_DPLL2_KD, 0x1D);
            OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
                AR_PHY_BB_DPLL2_KI, 0x06);


            OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL3,
                AR_PHY_BB_DPLL3_PHASE_SHIFT, 0x1);
        } else {






            OS_REG_WRITE(ah, AR_HORNET_CH0_DDR_DPLL2, 0x19e82f01);


            OS_REG_RMW_FIELD(ah, AR_HORNET_CH0_DDR_DPLL3,
                AR_PHY_BB_DPLL3_PHASE_SHIFT, 0x1);

            OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, 0x1142c);
            OS_DELAY(1000);


            OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL2, 0x886666);


            OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
                AR_PHY_BB_DPLL2_KD, 0x3D);
            OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
                AR_PHY_BB_DPLL2_KI, 0x06);


            OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL3,
                AR_PHY_BB_DPLL3_PHASE_SHIFT, 0x1);
        }
        OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, 0x142c);
        OS_DELAY(1000);
    } else if (AR_SREV_POSEIDON(ah) || AR_SREV_APHRODITE(ah)) {
        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2, AR_PHY_BB_DPLL2_PLL_PWD, 0x1);


        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
            AR_PHY_BB_DPLL2_KD, 0x40);
        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
            AR_PHY_BB_DPLL2_KI, 0x4);

        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL1,
            AR_PHY_BB_DPLL1_REFDIV, 0x5);
        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL1,
            AR_PHY_BB_DPLL1_NINI, 0x58);
        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL1,
            AR_PHY_BB_DPLL1_NFRAC, 0x0);

        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
            AR_PHY_BB_DPLL2_OUTDIV, 0x1);
        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
            AR_PHY_BB_DPLL2_LOCAL_PLL, 0x1);
        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
            AR_PHY_BB_DPLL2_EN_NEGTRIG, 0x1);


        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL3,
            AR_PHY_BB_DPLL3_PHASE_SHIFT, 0x6);

        OS_REG_RMW_FIELD(ah, AR_PHY_BB_DPLL2,
            AR_PHY_BB_DPLL2_PLL_PWD, 0x0);
        OS_DELAY(1000);

        OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, 0x142c);
        OS_DELAY(1000);
    } else if (AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah) || AR_SREV_HONEYBEE(ah)) {

        u_int32_t regdata, pll2_divint, pll2_divfrac;






        u_int32_t refdiv;

        if (clk_25mhz) {




            if (AR_SREV_HONEYBEE(ah)) {
                pll2_divint = 0x1c;
                pll2_divfrac = 0xa3d2;
                refdiv = 1;
            } else {
                pll2_divint = 0x54;
                pll2_divfrac = 0x1eb85;
                refdiv = 3;
            }

        } else {




            if (AR_SREV_WASP(ah)) {
                pll2_divint = 88;
                pll2_divfrac = 0;
                refdiv = 5;
            } else {
                pll2_divint = 0x11;
                pll2_divfrac = 0x26666;
                refdiv = 1;
            }

        }




        OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, 0x1142c);
        OS_DELAY(1000);
        do {
            regdata = OS_REG_READ(ah, AR_PHY_PLL_MODE);
            if (AR_SREV_HONEYBEE(ah)) {
                regdata = regdata | (0x1 << 22);
            } else {
                regdata = regdata | (0x1 << 16);
            }
            OS_REG_WRITE(ah, AR_PHY_PLL_MODE, regdata);
            OS_DELAY(100);





            OS_REG_WRITE(ah, AR_PHY_PLL_CONTROL,
                ((refdiv << 27) | (pll2_divint << 18) | pll2_divfrac));

            OS_DELAY(100);
            regdata = OS_REG_READ(ah, AR_PHY_PLL_MODE);




            if (AR_SREV_WASP(ah)) {
                regdata = (regdata & 0x80071fff) |
                    (0x1 << 30) | (0x1 << 13) | (0x4 << 26) | (0x18 << 19);
            } else if (AR_SREV_HONEYBEE(ah)) {



                regdata = (regdata & 0x01c00fff) |
                    (0x1 << 31) | (0x2 << 29) | (0xa << 25) | (0x1 << 19) | (0x6 << 12);
            } else {
                regdata = (regdata & 0x80071fff) |
                    (0x3 << 30) | (0x1 << 13) | (0x4 << 26) | (0x60 << 19);
            }


            OS_REG_WRITE(ah, AR_PHY_PLL_MODE, regdata);
            regdata = OS_REG_READ(ah, AR_PHY_PLL_MODE);
            if (AR_SREV_HONEYBEE(ah)) {
                regdata = (regdata & 0xffbfffff);
            } else {
                regdata = (regdata & 0xfffeffff);
            }
            OS_REG_WRITE(ah, AR_PHY_PLL_MODE, regdata);
            OS_DELAY(1000);
            if (AR_SREV_WASP(ah)) {

                regdata = OS_REG_READ(ah, AR_PHY_PLL_BB_DPLL3);
                regdata &= ~(1 << 30);
                OS_REG_WRITE(ah, AR_PHY_PLL_BB_DPLL3, regdata);
                OS_DELAY(100);


                regdata = OS_REG_READ(ah, AR_PHY_PLL_BB_DPLL3);
                regdata |= (1 << 30);
                OS_REG_WRITE(ah, AR_PHY_PLL_BB_DPLL3, regdata);


                do {
                    regdata = OS_REG_READ(ah, AR_PHY_PLL_BB_DPLL4);
                } while ((regdata & (1 << 3)) == 0);


                regdata = OS_REG_READ(ah, AR_PHY_PLL_BB_DPLL3);
                regdata &= ~(1 << 30);
                OS_REG_WRITE(ah, AR_PHY_PLL_BB_DPLL3, regdata);


                regdata = (OS_REG_READ(ah, AR_PHY_PLL_BB_DPLL3) & 0x007FFFF8) >> 3;
            } else {
                break;
            }
        } while (regdata >= 0x40000);


        OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, 0x142c);
        OS_DELAY(1000);
    } else {
        pll = SM(0x5, AR_RTC_PLL_REFDIV);
        if (ichan && IS_CHAN_5GHZ(ichan)) {
            pll |= SM(0x28, AR_RTC_PLL_DIV);



            if (IS_5GHZ_FAST_CLOCK_EN(ah, chan)) {
                pll = 0x142c;
            }
        } else {
            pll |= SM(0x2c, AR_RTC_PLL_DIV);
        }

        OS_REG_WRITE(ah, AR_RTC_PLL_CONTROL, pll);
    }




    OS_DELAY(RTC_PLL_SETTLE_DELAY);

    OS_REG_WRITE(ah, AR_RTC_SLEEP_CLK,
        AR_RTC_FORCE_DERIVED_CLK | AR_RTC_PCIE_RST_PWDN_EN);


    if (AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah)) {
        if (clk_25mhz) {
            OS_REG_WRITE(ah,
                AR_RTC_DERIVED_RTC_CLK, (0x17c << 1));
            OS_REG_WRITE(ah, AR_SLP32_MODE, 0x0010f3d7);
            OS_REG_WRITE(ah, AR_SLP32_INC, 0x0001e7ae);
        } else {
            OS_REG_WRITE(ah,
                AR_RTC_DERIVED_RTC_CLK, (0x261 << 1));
            OS_REG_WRITE(ah, AR_SLP32_MODE, 0x0010f400);
            OS_REG_WRITE(ah, AR_SLP32_INC, 0x0001e800);
        }
        OS_DELAY(100);
    }
}
