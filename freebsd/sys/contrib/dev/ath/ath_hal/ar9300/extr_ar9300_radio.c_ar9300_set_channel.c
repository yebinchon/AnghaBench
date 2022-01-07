
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct ieee80211_channel {int ic_flags; int ic_freq; } ;
struct ath_hal {int dummy; } ;
struct TYPE_10__ {scalar_t__ clk_25mhz; } ;
struct TYPE_9__ {struct ieee80211_channel* ah_curchan; } ;
struct TYPE_8__ {int synth_center; } ;
struct TYPE_7__ {int channel; } ;
typedef TYPE_1__ HAL_CHANNEL_INTERNAL ;
typedef int HAL_BOOL ;
typedef TYPE_2__ CHAN_CENTERS ;


 TYPE_6__* AH9300 (struct ath_hal*) ;
 int AH_MARK_SETCHANNEL ;
 TYPE_5__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_PHY_65NM_CH0_SYNTH4 ;
 int AR_PHY_65NM_CH0_SYNTH7 ;
 int AR_PHY_SYNTH4_LONG_SHIFT_SELECT ;
 int AR_PHY_SYNTH_CONTROL ;
 scalar_t__ AR_SREV_APHRODITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_HONEYBEE (struct ath_hal*) ;
 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int CHANSEL_2G (int) ;
 int CHANSEL_5G (int) ;
 scalar_t__ CHANSEL_5G_DOT5MHZ ;
 int HALASSERT (int) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel*) ;
 int OS_MARK (struct ath_hal*,int ,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int* ar9300_chansel_xtal_25M ;
 int* ar9300_chansel_xtal_40M ;
 int ar9300_get_channel_centers (struct ath_hal*,struct ieee80211_channel*,TYPE_2__*) ;
 TYPE_1__* ath_hal_checkchannel (struct ath_hal*,struct ieee80211_channel*) ;
 int ath_hal_mhz2ieee_2ghz (struct ath_hal*,int) ;
 int ieee80211_mhz2ieee (struct ath_hal*,int ,int ) ;

__attribute__((used)) static HAL_BOOL
ar9300_set_channel(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int16_t b_mode, frac_mode = 0, a_mode_ref_sel = 0;
    u_int32_t freq, channel_sel, reg32;
    u_int8_t clk_25mhz = AH9300(ah)->clk_25mhz;
    CHAN_CENTERS centers;
    int load_synth_channel;
    ar9300_get_channel_centers(ah, chan, &centers);
    freq = centers.synth_center;

    if (freq < 4800) {
        b_mode = 1;

        if (AR_SREV_HORNET(ah)) {
            uint32_t i;
            i = ath_hal_mhz2ieee_2ghz(ah, freq);
            HALASSERT(i > 0 && i <= 14);
            if (clk_25mhz) {
                channel_sel = ar9300_chansel_xtal_25M[i - 1];
            } else {
                channel_sel = ar9300_chansel_xtal_40M[i - 1];
            }
        } else if (AR_SREV_POSEIDON(ah) || AR_SREV_APHRODITE(ah)) {
            u_int32_t channel_frac;






            channel_sel = (freq * 4) / 120;
            channel_frac = (((freq * 4) % 120) * 0x20000) / 120;
            channel_sel = (channel_sel << 17) | (channel_frac);
        } else if (AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah) || AR_SREV_HONEYBEE(ah)) {
            u_int32_t channel_frac;
            if (clk_25mhz) {






                if (AR_SREV_SCORPION(ah) || AR_SREV_HONEYBEE(ah)) {

                    channel_sel = (freq * 4) / 75;
                    channel_frac = (((freq * 4) % 75) * 0x20000) / 75;
                } else {
                    channel_sel = (freq * 2) / 75;
                    channel_frac = (((freq * 2) % 75) * 0x20000) / 75;
                }
            } else {






                if (AR_SREV_SCORPION(ah)) {

                    channel_sel = (freq * 4) / 120;
                    channel_frac = (((freq * 4) % 120) * 0x20000) / 120;
                } else {
                    channel_sel = (freq * 2) / 120;
                    channel_frac = (((freq * 2) % 120) * 0x20000) / 120;
                }
            }
            channel_sel = (channel_sel << 17) | (channel_frac);
        } else {
            channel_sel = CHANSEL_2G(freq);
        }
    } else {
        b_mode = 0;
        if ((AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah)) && clk_25mhz){
            u_int32_t channel_frac;






            channel_sel = freq / 75 ;
            channel_frac = ((freq % 75) * 0x20000) / 75;
            channel_sel = (channel_sel << 17) | (channel_frac);
        } else {
            channel_sel = CHANSEL_5G(freq);

            channel_sel >>= 1;
        }
    }



    frac_mode = 1;
    a_mode_ref_sel = 0;
    load_synth_channel = 0;

    reg32 = (b_mode << 29);
    OS_REG_WRITE(ah, AR_PHY_SYNTH_CONTROL, reg32);


    OS_REG_RMW_FIELD(ah,
        AR_PHY_65NM_CH0_SYNTH4, AR_PHY_SYNTH4_LONG_SHIFT_SELECT, 1);


    reg32 =
        (channel_sel << 2) |
        (a_mode_ref_sel << 28) |
        (frac_mode << 30) |
        (load_synth_channel << 31);
    if (IEEE80211_IS_CHAN_QUARTER(chan)) {
        reg32 += CHANSEL_5G_DOT5MHZ;
    }
    OS_REG_WRITE(ah, AR_PHY_65NM_CH0_SYNTH7, reg32);

    load_synth_channel = 1;
    reg32 |= load_synth_channel << 31;
    OS_REG_WRITE(ah, AR_PHY_65NM_CH0_SYNTH7, reg32);


    AH_PRIVATE(ah)->ah_curchan = chan;

    return AH_TRUE;
}
