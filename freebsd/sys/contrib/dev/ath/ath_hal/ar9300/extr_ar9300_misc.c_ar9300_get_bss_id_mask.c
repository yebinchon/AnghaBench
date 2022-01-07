
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal_9300 {int ah_bssid_mask; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int IEEE80211_ADDR_LEN ;
 int OS_MEMCPY (int *,int ,int ) ;

void
ar9300_get_bss_id_mask(struct ath_hal *ah, u_int8_t *mask)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    OS_MEMCPY(mask, ahp->ah_bssid_mask, IEEE80211_ADDR_LEN);
}
