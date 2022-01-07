
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 int AR_D_GBL_IFS_EIFS ;
 int AR_D_GBL_IFS_SLOT ;
 int AR_EIFS_HALF ;
 int AR_EIFS_QUARTER ;
 int AR_RX_LATENCY_HALF ;
 int AR_RX_LATENCY_HALF_FAST_CLOCK ;
 int AR_RX_LATENCY_QUARTER ;
 int AR_RX_LATENCY_QUARTER_FAST_CLOCK ;
 int AR_SLOT_HALF ;
 int AR_SLOT_QUARTER ;
 int AR_TX_LATENCY_HALF ;
 int AR_TX_LATENCY_HALF_FAST_CLOCK ;
 int AR_TX_LATENCY_QUARTER ;
 int AR_TX_LATENCY_QUARTER_FAST_CLOCK ;
 int AR_USEC ;
 int AR_USEC_HALF ;
 int AR_USEC_HALF_FAST_CLOCK ;
 int AR_USEC_QUARTER ;
 int AR_USEC_QUARTER_FAST_CLOCK ;
 int AR_USEC_RX_LATENCY ;
 int AR_USEC_TX_LATENCY ;
 int AR_USEC_USEC ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel*) ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,struct ieee80211_channel*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int ,int) ;
 int ar9300_mac_to_clks (struct ath_hal*,int ) ;

__attribute__((used)) static void
ar9300_set_ifs_timing(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t tx_lat, rx_lat, usec, slot, regval, eifs;

    regval = OS_REG_READ(ah, AR_USEC);
    regval &= ~(AR_USEC_RX_LATENCY | AR_USEC_TX_LATENCY | AR_USEC_USEC);
    if (IEEE80211_IS_CHAN_HALF(chan)) {
        slot = ar9300_mac_to_clks(ah, AR_SLOT_HALF);
        eifs = ar9300_mac_to_clks(ah, AR_EIFS_HALF);
        if (IS_5GHZ_FAST_CLOCK_EN(ah, chan)) {
            rx_lat = SM(AR_RX_LATENCY_HALF_FAST_CLOCK, AR_USEC_RX_LATENCY);
            tx_lat = SM(AR_TX_LATENCY_HALF_FAST_CLOCK, AR_USEC_TX_LATENCY);
            usec = SM(AR_USEC_HALF_FAST_CLOCK, AR_USEC_USEC);
        } else {
            rx_lat = SM(AR_RX_LATENCY_HALF, AR_USEC_RX_LATENCY);
            tx_lat = SM(AR_TX_LATENCY_HALF, AR_USEC_TX_LATENCY);
            usec = SM(AR_USEC_HALF, AR_USEC_USEC);
        }
    } else {
        slot = ar9300_mac_to_clks(ah, AR_SLOT_QUARTER);
        eifs = ar9300_mac_to_clks(ah, AR_EIFS_QUARTER);
        if (IS_5GHZ_FAST_CLOCK_EN(ah, chan)) {
            rx_lat = SM(AR_RX_LATENCY_QUARTER_FAST_CLOCK, AR_USEC_RX_LATENCY);
            tx_lat = SM(AR_TX_LATENCY_QUARTER_FAST_CLOCK, AR_USEC_TX_LATENCY);
            usec = SM(AR_USEC_QUARTER_FAST_CLOCK, AR_USEC_USEC);
        } else {
            rx_lat = SM(AR_RX_LATENCY_QUARTER, AR_USEC_RX_LATENCY);
            tx_lat = SM(AR_TX_LATENCY_QUARTER, AR_USEC_TX_LATENCY);
            usec = SM(AR_USEC_QUARTER, AR_USEC_USEC);
        }
    }

    OS_REG_WRITE(ah, AR_USEC, (usec | regval | tx_lat | rx_lat));
    OS_REG_WRITE(ah, AR_D_GBL_IFS_SLOT, slot);
    OS_REG_WRITE(ah, AR_D_GBL_IFS_EIFS, eifs);
}
