#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ u_int8_t ;
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct ieee80211_channel {int /*<<< orphan*/  ic_flags; int /*<<< orphan*/  ic_freq; } ;
struct ath_hal {int dummy; } ;
struct TYPE_10__ {scalar_t__ clk_25mhz; } ;
struct TYPE_9__ {struct ieee80211_channel* ah_curchan; } ;
struct TYPE_8__ {int synth_center; } ;
struct TYPE_7__ {int /*<<< orphan*/  channel; } ;
typedef  TYPE_1__ HAL_CHANNEL_INTERNAL ;
typedef  int /*<<< orphan*/  HAL_BOOL ;
typedef  TYPE_2__ CHAN_CENTERS ;

/* Variables and functions */
 TYPE_6__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_MARK_SETCHANNEL ; 
 TYPE_5__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_SYNTH4 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_SYNTH7 ; 
 int /*<<< orphan*/  AR_PHY_SYNTH4_LONG_SHIFT_SELECT ; 
 int /*<<< orphan*/  AR_PHY_SYNTH_CONTROL ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal*) ; 
 scalar_t__ FUNC6 (struct ath_hal*) ; 
 scalar_t__ FUNC7 (struct ath_hal*) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 scalar_t__ CHANSEL_5G_DOT5MHZ ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int* ar9300_chansel_xtal_25M ; 
 int* ar9300_chansel_xtal_40M ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hal*,struct ieee80211_channel*,TYPE_2__*) ; 
 TYPE_1__* FUNC16 (struct ath_hal*,struct ieee80211_channel*) ; 
 int FUNC17 (struct ath_hal*,int) ; 
 int FUNC18 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HAL_BOOL
FUNC19(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int16_t b_mode, frac_mode = 0, a_mode_ref_sel = 0;
    u_int32_t freq, channel_sel, reg32;
    u_int8_t clk_25mhz = FUNC0(ah)->clk_25mhz;
    CHAN_CENTERS centers;
    int load_synth_channel;
#ifdef	AH_DEBUG_ALQ
    HAL_CHANNEL_INTERNAL *ichan = ath_hal_checkchannel(ah, chan);
#endif

    /*
     * Put this behind AH_DEBUG_ALQ for now until the Hornet
     * channel_sel code below is made to work.
     */
#ifdef	AH_DEBUG_ALQ
    OS_MARK(ah, AH_MARK_SETCHANNEL, ichan->channel);
#endif

    FUNC15(ah, chan, &centers);
    freq = centers.synth_center;

    if (freq < 4800) {     /* 2 GHz, fractional mode */
        b_mode = 1; /* 2 GHz */

        if (FUNC4(ah)) {
#if 0
            u_int32_t ichan =
              ieee80211_mhz2ieee(ah, chan->ic_freq, chan->ic_flags);
            HALASSERT(ichan > 0 && ichan <= 14);
            if (clk_25mhz) {
                channel_sel = ar9300_chansel_xtal_25M[ichan - 1];
            } else {
                channel_sel = ar9300_chansel_xtal_40M[ichan - 1];
            }
#endif
            uint32_t i;

            /*
             * Pay close attention to this bit!
             *
             * We need to map the actual desired synth frequency to
             * one of the channel select array entries.
             *
             * For HT20, it'll align with the channel we select.
             *
             * For HT40 though it won't - the centre frequency
             * will not be the frequency of chan->ic_freq or ichan->freq;
             * it needs to be whatever frequency maps to 'freq'.
             */
            i = FUNC17(ah, freq);
            FUNC10(i > 0 && i <= 14);
            if (clk_25mhz) {
                channel_sel = ar9300_chansel_xtal_25M[i - 1];
            } else {
                channel_sel = ar9300_chansel_xtal_40M[i - 1];
            }
        } else if (FUNC5(ah) || FUNC2(ah)) {
            u_int32_t channel_frac;
            /* 
             * freq_ref = (40 / (refdiva >> a_mode_ref_sel));
             *     (where refdiva = 1 and amoderefsel = 0)
             * ndiv = ((chan_mhz * 4) / 3) / freq_ref;
             * chansel = int(ndiv),  chanfrac = (ndiv - chansel) * 0x20000
             */
            channel_sel = (freq * 4) / 120;
            channel_frac = (((freq * 4) % 120) * 0x20000) / 120;
            channel_sel = (channel_sel << 17) | (channel_frac);
        } else if (FUNC7(ah) || FUNC6(ah) || FUNC3(ah)) {
            u_int32_t channel_frac;
            if (clk_25mhz) {
                /* 
                 * freq_ref = (50 / (refdiva >> a_mode_ref_sel));
                 *     (where refdiva = 1 and amoderefsel = 0)
                 * ndiv = ((chan_mhz * 4) / 3) / freq_ref;
                 * chansel = int(ndiv),  chanfrac = (ndiv - chansel) * 0x20000
                 */
                if (FUNC6(ah) || FUNC3(ah)) {
                    /* Doubler is off for Scorpion */
                    channel_sel = (freq * 4) / 75;
                    channel_frac = (((freq * 4) % 75) * 0x20000) / 75;
                } else {
                    channel_sel = (freq * 2) / 75;
                    channel_frac = (((freq * 2) % 75) * 0x20000) / 75;
                }
            } else {
                /* 
                 * freq_ref = (50 / (refdiva >> a_mode_ref_sel));
                 *     (where refdiva = 1 and amoderefsel = 0)
                 * ndiv = ((chan_mhz * 4) / 3) / freq_ref;
                 * chansel = int(ndiv),  chanfrac = (ndiv - chansel) * 0x20000
                 */
                if (FUNC6(ah)) {
                    /* Doubler is off for Scorpion */
                    channel_sel = (freq * 4) / 120;
                    channel_frac = (((freq * 4) % 120) * 0x20000) / 120;
                } else {
                    channel_sel = (freq * 2) / 120;
                    channel_frac = (((freq * 2) % 120) * 0x20000) / 120;
                }
            }
            channel_sel = (channel_sel << 17) | (channel_frac);
        } else {
            channel_sel = FUNC8(freq);
        }
    } else {
        b_mode = 0; /* 5 GHz */
        if ((FUNC7(ah) || FUNC6(ah)) && clk_25mhz){
            u_int32_t channel_frac;
            /* 
             * freq_ref = (50 / (refdiva >> amoderefsel));
             *     (refdiva = 1, amoderefsel = 0)
             * ndiv = ((chan_mhz * 2) / 3) / freq_ref;
             * chansel = int(ndiv),  chanfrac = (ndiv - chansel) * 0x20000
             */
            channel_sel = freq / 75 ;
            channel_frac = ((freq % 75) * 0x20000) / 75;
            channel_sel = (channel_sel << 17) | (channel_frac);
        } else {
            channel_sel = FUNC9(freq);
            /* Doubler is ON, so, divide channel_sel by 2. */
            channel_sel >>= 1;
        }
    }


	/* Enable fractional mode for all channels */
    frac_mode = 1;
    a_mode_ref_sel = 0;
    load_synth_channel = 0;
    
    reg32 = (b_mode << 29);
    FUNC14(ah, AR_PHY_SYNTH_CONTROL, reg32);

	/* Enable Long shift Select for Synthesizer */
    FUNC13(ah,
        AR_PHY_65NM_CH0_SYNTH4, AR_PHY_SYNTH4_LONG_SHIFT_SELECT, 1);

    /* program synth. setting */
    reg32 =
        (channel_sel       <<  2) |
        (a_mode_ref_sel      << 28) |
        (frac_mode         << 30) |
        (load_synth_channel << 31);
    if (FUNC11(chan)) {
        reg32 += CHANSEL_5G_DOT5MHZ;
    }
    FUNC14(ah, AR_PHY_65NM_CH0_SYNTH7, reg32);
    /* Toggle Load Synth channel bit */
    load_synth_channel = 1;
    reg32 |= load_synth_channel << 31;
    FUNC14(ah, AR_PHY_65NM_CH0_SYNTH7, reg32);


    FUNC1(ah)->ah_curchan = chan;

    return AH_TRUE;
}