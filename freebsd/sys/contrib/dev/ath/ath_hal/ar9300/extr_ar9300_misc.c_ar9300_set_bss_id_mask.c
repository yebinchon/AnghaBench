
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal_9300 {scalar_t__ ah_bssid_mask; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_TRUE ;
 int AR_BSSMSKL ;
 int AR_BSSMSKU ;
 int IEEE80211_ADDR_LEN ;
 int LE_READ_2 (scalar_t__) ;
 int LE_READ_4 (scalar_t__) ;
 int OS_MEMCPY (scalar_t__,int const*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

HAL_BOOL
ar9300_set_bss_id_mask(struct ath_hal *ah, const u_int8_t *mask)
{
    struct ath_hal_9300 *ahp = AH9300(ah);


    OS_MEMCPY(ahp->ah_bssid_mask, mask, IEEE80211_ADDR_LEN);

    OS_REG_WRITE(ah, AR_BSSMSKL, LE_READ_4(ahp->ah_bssid_mask));
    OS_REG_WRITE(ah, AR_BSSMSKU, LE_READ_2(ahp->ah_bssid_mask + 4));
    return AH_TRUE;
}
