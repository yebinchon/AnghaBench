
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal_9300 {int ah_macaddr; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_TRUE ;
 int IEEE80211_ADDR_LEN ;
 int OS_MEMCPY (int ,int const*,int ) ;

HAL_BOOL
ar9300_set_mac_address(struct ath_hal *ah, const u_int8_t *mac)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    OS_MEMCPY(ahp->ah_macaddr, mac, IEEE80211_ADDR_LEN);
    return AH_TRUE;
}
