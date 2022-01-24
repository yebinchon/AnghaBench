#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
typedef  int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ clk_25mhz; } ;
typedef  int /*<<< orphan*/  HAL_CHANNEL_INTERNAL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_HORNET_CH0_DDR_DPLL2 ; 
 int /*<<< orphan*/  AR_HORNET_CH0_DDR_DPLL3 ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL1 ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL1_NFRAC ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL1_NINI ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL1_REFDIV ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL2 ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL2_EN_NEGTRIG ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL2_KD ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL2_KI ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL2_LOCAL_PLL ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL2_OUTDIV ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL2_PLL_PWD ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL3 ; 
 int /*<<< orphan*/  AR_PHY_BB_DPLL3_PHASE_SHIFT ; 
 int /*<<< orphan*/  AR_PHY_PLL_BB_DPLL3 ; 
 int /*<<< orphan*/  AR_PHY_PLL_BB_DPLL4 ; 
 int /*<<< orphan*/  AR_PHY_PLL_CONTROL ; 
 int /*<<< orphan*/  AR_PHY_PLL_MODE ; 
 int /*<<< orphan*/  AR_RTC_DERIVED_RTC_CLK ; 
 int AR_RTC_FORCE_DERIVED_CLK ; 
 int AR_RTC_PCIE_RST_PWDN_EN ; 
 int /*<<< orphan*/  AR_RTC_PLL_CLKSEL ; 
 int /*<<< orphan*/  AR_RTC_PLL_CONTROL ; 
 int /*<<< orphan*/  AR_RTC_PLL_CONTROL2 ; 
 int /*<<< orphan*/  AR_RTC_PLL_DIV ; 
 int /*<<< orphan*/  AR_RTC_PLL_REFDIV ; 
 int /*<<< orphan*/  AR_RTC_SLEEP_CLK ; 
 int /*<<< orphan*/  AR_SLP32_INC ; 
 int /*<<< orphan*/  AR_SLP32_MODE ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal*) ; 
 scalar_t__ FUNC6 (struct ath_hal*) ; 
 int DPLL2_KD_VAL ; 
 int DPLL2_KI_VAL ; 
 int DPLL3_PHASE_SHIFT_VAL ; 
 scalar_t__ FUNC7 (struct ath_hal*,struct ieee80211_channel*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC10 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int RTC_PLL_SETTLE_DELAY ; 
 int FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (struct ath_hal*,struct ieee80211_channel*) ; 

void
FUNC17(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t pll;
    u_int8_t clk_25mhz = FUNC0(ah)->clk_25mhz;
    HAL_CHANNEL_INTERNAL *ichan = NULL;

    if (chan)
        ichan = FUNC16(ah, chan);

    if (FUNC3(ah)) {
        if (clk_25mhz) {
            /* Hornet uses PLL_CONTROL_2. Xtal is 25MHz for Hornet.
             * REFDIV set to 0x1.
             * $xtal_freq = 25;
             * $PLL2_div = (704/$xtal_freq); # 176 * 4 = 704.
             * MAC and BB run at 176 MHz.
             * $PLL2_divint = int($PLL2_div);
             * $PLL2_divfrac = $PLL2_div - $PLL2_divint;
             * $PLL2_divfrac = int($PLL2_divfrac * 0x4000); # 2^14
             * $PLL2_Val = ($PLL2_divint & 0x3f) << 19 | (0x1) << 14 |
             *     $PLL2_divfrac & 0x3fff;
             * Therefore, $PLL2_Val = 0xe04a3d
             */
#define DPLL2_KD_VAL            0x1D
#define DPLL2_KI_VAL            0x06
#define DPLL3_PHASE_SHIFT_VAL   0x1

            /* Rewrite DDR PLL2 and PLL3 */
            /* program DDR PLL ki and kd value, ki=0x6, kd=0x1d */
            FUNC14(ah, AR_HORNET_CH0_DDR_DPLL2, 0x18e82f01);

            /* program DDR PLL phase_shift to 0x1 */
            FUNC13(ah, AR_HORNET_CH0_DDR_DPLL3,
                AR_PHY_BB_DPLL3_PHASE_SHIFT, DPLL3_PHASE_SHIFT_VAL);

            FUNC14(ah, AR_RTC_PLL_CONTROL, 0x1142c);
            FUNC11(1000);

            /* program refdiv, nint, frac to RTC register */
            FUNC14(ah, AR_RTC_PLL_CONTROL2, 0xe04a3d);

            /* program BB PLL ki and kd value, ki=0x6, kd=0x1d */
            FUNC13(ah, AR_PHY_BB_DPLL2,
                AR_PHY_BB_DPLL2_KD, DPLL2_KD_VAL);
            FUNC13(ah, AR_PHY_BB_DPLL2,
                AR_PHY_BB_DPLL2_KI, DPLL2_KI_VAL);

            /* program BB PLL phase_shift to 0x1 */
            FUNC13(ah, AR_PHY_BB_DPLL3,
                AR_PHY_BB_DPLL3_PHASE_SHIFT, DPLL3_PHASE_SHIFT_VAL);
        } else { /* 40MHz */
#undef  DPLL2_KD_VAL
#undef  DPLL2_KI_VAL
#define DPLL2_KD_VAL            0x3D
#define DPLL2_KI_VAL            0x06
            /* Rewrite DDR PLL2 and PLL3 */
            /* program DDR PLL ki and kd value, ki=0x6, kd=0x3d */
            FUNC14(ah, AR_HORNET_CH0_DDR_DPLL2, 0x19e82f01);

            /* program DDR PLL phase_shift to 0x1 */
            FUNC13(ah, AR_HORNET_CH0_DDR_DPLL3,
                AR_PHY_BB_DPLL3_PHASE_SHIFT, DPLL3_PHASE_SHIFT_VAL);

            FUNC14(ah, AR_RTC_PLL_CONTROL, 0x1142c);
            FUNC11(1000);

            /* program refdiv, nint, frac to RTC register */
            FUNC14(ah, AR_RTC_PLL_CONTROL2, 0x886666);

            /* program BB PLL ki and kd value, ki=0x6, kd=0x3d */
            FUNC13(ah, AR_PHY_BB_DPLL2,
                AR_PHY_BB_DPLL2_KD, DPLL2_KD_VAL);
            FUNC13(ah, AR_PHY_BB_DPLL2,
                AR_PHY_BB_DPLL2_KI, DPLL2_KI_VAL);

            /* program BB PLL phase_shift to 0x1 */
            FUNC13(ah, AR_PHY_BB_DPLL3,
                AR_PHY_BB_DPLL3_PHASE_SHIFT, DPLL3_PHASE_SHIFT_VAL);
        }
        FUNC14(ah, AR_RTC_PLL_CONTROL, 0x142c);
        FUNC11(1000);
    } else if (FUNC4(ah) || FUNC1(ah)) {
        FUNC13(ah, AR_PHY_BB_DPLL2, AR_PHY_BB_DPLL2_PLL_PWD, 0x1);

        /* program BB PLL ki and kd value, ki=0x4, kd=0x40 */
        FUNC13(ah, AR_PHY_BB_DPLL2, 
            AR_PHY_BB_DPLL2_KD, 0x40);
        FUNC13(ah, AR_PHY_BB_DPLL2, 
            AR_PHY_BB_DPLL2_KI, 0x4);

        FUNC13(ah, AR_PHY_BB_DPLL1, 
            AR_PHY_BB_DPLL1_REFDIV, 0x5);
        FUNC13(ah, AR_PHY_BB_DPLL1, 
            AR_PHY_BB_DPLL1_NINI, 0x58);
        FUNC13(ah, AR_PHY_BB_DPLL1, 
            AR_PHY_BB_DPLL1_NFRAC, 0x0);

        FUNC13(ah, AR_PHY_BB_DPLL2, 
            AR_PHY_BB_DPLL2_OUTDIV, 0x1);      
        FUNC13(ah, AR_PHY_BB_DPLL2, 
            AR_PHY_BB_DPLL2_LOCAL_PLL, 0x1);      
        FUNC13(ah, AR_PHY_BB_DPLL2, 
            AR_PHY_BB_DPLL2_EN_NEGTRIG, 0x1); 

        /* program BB PLL phase_shift to 0x6 */
        FUNC13(ah, AR_PHY_BB_DPLL3, 
            AR_PHY_BB_DPLL3_PHASE_SHIFT, 0x6); 

        FUNC13(ah, AR_PHY_BB_DPLL2, 
            AR_PHY_BB_DPLL2_PLL_PWD, 0x0); 
        FUNC11(1000);

        FUNC14(ah, AR_RTC_PLL_CONTROL, 0x142c);
        FUNC11(1000);
    } else if (FUNC6(ah) || FUNC5(ah) || FUNC2(ah)) {
#define SRIF_PLL 1
        u_int32_t regdata, pll2_divint, pll2_divfrac;

#ifndef SRIF_PLL
	u_int32_t pll2_clkmode;
#endif

#ifdef SRIF_PLL
        u_int32_t refdiv;
#endif
        if (clk_25mhz) {
#ifndef SRIF_PLL
            pll2_divint = 0x1c;
            pll2_divfrac = 0xa3d7;
#else
            if (FUNC2(ah)) {
                pll2_divint = 0x1c;
                pll2_divfrac = 0xa3d2;
                refdiv = 1;
            } else {
                pll2_divint = 0x54;
                pll2_divfrac = 0x1eb85;
                refdiv = 3;
            }
#endif
        } else {
#ifndef SRIF_PLL
            pll2_divint = 0x11;
            pll2_divfrac = 0x26666;
#else
            if (FUNC6(ah)) {
                pll2_divint = 88;
                pll2_divfrac = 0;
                refdiv = 5;
            } else {
                pll2_divint = 0x11;
                pll2_divfrac = 0x26666;
                refdiv = 1;
            }
#endif
        }
#ifndef SRIF_PLL
        pll2_clkmode = 0x3d;
#endif
        /* PLL programming through SRIF Local Mode */
        FUNC14(ah, AR_RTC_PLL_CONTROL, 0x1142c); /* Bypass mode */
        FUNC11(1000);
        do {
            regdata = FUNC12(ah, AR_PHY_PLL_MODE);
            if (FUNC2(ah)) {
                regdata = regdata | (0x1 << 22);
            } else {
                regdata = regdata | (0x1 << 16);
            }
            FUNC14(ah, AR_PHY_PLL_MODE, regdata); /* PWD_PLL set to 1 */
            FUNC11(100);
            /* override int, frac, refdiv */
#ifndef SRIF_PLL
            OS_REG_WRITE(ah, AR_PHY_PLL_CONTROL,
                ((1 << 27) | (pll2_divint << 18) | pll2_divfrac));
#else
            FUNC14(ah, AR_PHY_PLL_CONTROL,
                ((refdiv << 27) | (pll2_divint << 18) | pll2_divfrac));
#endif
            FUNC11(100);
            regdata = FUNC12(ah, AR_PHY_PLL_MODE);
#ifndef SRIF_PLL
            regdata = (regdata & 0x80071fff) |
                (0x1 << 30) | (0x1 << 13) | (0x6 << 26) | (pll2_clkmode << 19);
#else
            if (FUNC6(ah)) {
                regdata = (regdata & 0x80071fff) |
                    (0x1 << 30) | (0x1 << 13) | (0x4 << 26) | (0x18 << 19);
            } else if (FUNC2(ah)) {
                /*
                 * Kd=10, Ki=2, Outdiv=1, Local PLL=0, Phase Shift=4 
                 */
                regdata = (regdata & 0x01c00fff) |
                    (0x1 << 31) | (0x2 << 29) | (0xa << 25) | (0x1 << 19) | (0x6 << 12);
            } else {
                regdata = (regdata & 0x80071fff) |
                    (0x3 << 30) | (0x1 << 13) | (0x4 << 26) | (0x60 << 19);
            }
#endif
            /* Ki, Kd, Local PLL, Outdiv */
            FUNC14(ah, AR_PHY_PLL_MODE, regdata);
            regdata = FUNC12(ah, AR_PHY_PLL_MODE);
            if (FUNC2(ah)) {
                regdata = (regdata & 0xffbfffff);
            } else {
                regdata = (regdata & 0xfffeffff);
            }
            FUNC14(ah, AR_PHY_PLL_MODE, regdata); /* PWD_PLL set to 0 */
            FUNC11(1000);
            if (FUNC6(ah)) {
                /* clear do measure */
                regdata = FUNC12(ah, AR_PHY_PLL_BB_DPLL3);
                regdata &= ~(1 << 30);
                FUNC14(ah, AR_PHY_PLL_BB_DPLL3, regdata);
                FUNC11(100);
            
                /* set do measure */
                regdata = FUNC12(ah, AR_PHY_PLL_BB_DPLL3);
                regdata |= (1 << 30);
                FUNC14(ah, AR_PHY_PLL_BB_DPLL3, regdata);
            
                /* wait for measure done */
                do {
                    regdata = FUNC12(ah, AR_PHY_PLL_BB_DPLL4);
                } while ((regdata & (1 << 3)) == 0);
            
                /* clear do measure */
                regdata = FUNC12(ah, AR_PHY_PLL_BB_DPLL3);
                regdata &= ~(1 << 30);
                FUNC14(ah, AR_PHY_PLL_BB_DPLL3, regdata);
            
                /* get measure sqsum dvc */
                regdata = (FUNC12(ah, AR_PHY_PLL_BB_DPLL3) & 0x007FFFF8) >> 3;
            } else {
                break;
            }
        } while (regdata >= 0x40000);

        /* Remove from Bypass mode */
        FUNC14(ah, AR_RTC_PLL_CONTROL, 0x142c);
        FUNC11(1000);
    } else {
        pll = FUNC15(0x5, AR_RTC_PLL_REFDIV);
  
        /* Supposedly not needed on Osprey */
#if 0
        if (chan && IS_CHAN_HALF_RATE(chan)) {
            pll |= SM(0x1, AR_RTC_PLL_CLKSEL);
        } else if (chan && IS_CHAN_QUARTER_RATE(chan)) {
            pll |= SM(0x2, AR_RTC_PLL_CLKSEL);
        }
#endif
        if (ichan && FUNC8(ichan)) {
            pll |= FUNC15(0x28, AR_RTC_PLL_DIV);
            /* 
             * When doing fast clock, set PLL to 0x142c
             */
            if (FUNC7(ah, chan)) {
                pll = 0x142c;
            }
        } else {
            pll |= FUNC15(0x2c, AR_RTC_PLL_DIV);
        }

        FUNC14(ah, AR_RTC_PLL_CONTROL, pll);
    }

    /* TODO:
     * For multi-band owl, switch between bands by reiniting the PLL.
     */
    FUNC11(RTC_PLL_SETTLE_DELAY);

    FUNC14(ah, AR_RTC_SLEEP_CLK,
        AR_RTC_FORCE_DERIVED_CLK | AR_RTC_PCIE_RST_PWDN_EN);

    /* XXX TODO: honeybee? */
    if (FUNC6(ah) || FUNC5(ah)) {
        if (clk_25mhz) {
            FUNC14(ah,
                AR_RTC_DERIVED_RTC_CLK, (0x17c << 1)); /* 32KHz sleep clk */
            FUNC14(ah, AR_SLP32_MODE, 0x0010f3d7);
            FUNC14(ah, AR_SLP32_INC, 0x0001e7ae);
        } else {
            FUNC14(ah,
                AR_RTC_DERIVED_RTC_CLK, (0x261 << 1)); /* 32KHz sleep clk */
            FUNC14(ah, AR_SLP32_MODE, 0x0010f400);
            FUNC14(ah, AR_SLP32_INC, 0x0001e800);
        }
        FUNC11(100);
    }
}