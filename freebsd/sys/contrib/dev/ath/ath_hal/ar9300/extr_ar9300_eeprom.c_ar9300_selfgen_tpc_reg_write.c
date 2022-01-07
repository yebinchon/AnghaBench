
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;


 size_t ALL_TARGET_LEGACY_1L_5L ;
 size_t ALL_TARGET_LEGACY_6_24 ;
 int AR_TPC ;
 int AR_TPC_ACK ;
 int AR_TPC_CHIRP ;
 int AR_TPC_CTS ;
 int AR_TPC_RPT ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int,int ) ;

__attribute__((used)) static void
ar9300_selfgen_tpc_reg_write(struct ath_hal *ah, const struct ieee80211_channel *chan,
                             u_int8_t *p_pwr_array)
{
    u_int32_t tpc_reg_val;







    if (IEEE80211_IS_CHAN_2GHZ(chan)) {
        tpc_reg_val = (SM(p_pwr_array[ALL_TARGET_LEGACY_1L_5L], AR_TPC_ACK) |
                       SM(p_pwr_array[ALL_TARGET_LEGACY_1L_5L], AR_TPC_CTS) |
                       SM(0x3f, AR_TPC_CHIRP) |
                       SM(0x3f, AR_TPC_RPT));
    } else {
        tpc_reg_val = (SM(p_pwr_array[ALL_TARGET_LEGACY_6_24], AR_TPC_ACK) |
                       SM(p_pwr_array[ALL_TARGET_LEGACY_6_24], AR_TPC_CTS) |
                       SM(0x3f, AR_TPC_CHIRP) |
                       SM(0x3f, AR_TPC_RPT));
    }
    OS_REG_WRITE(ah, AR_TPC, tpc_reg_val);
}
