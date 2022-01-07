
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int ah_hang_wars; } ;
struct ath_hal {int dummy; } ;
typedef int hal_hw_hangs_t ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_NULL ;
 int HAL_CAP_BB_DFS_HANG ;
 int HAL_CAP_BB_RIFS_HANG ;
 int HAL_CAP_BB_RX_CLEAR_STUCK_HANG ;
 int HAL_CAP_MAC_HANG ;
 int HAL_CAP_PHYRESTART_CLR_WAR ;
 int HAL_DFS_BB_HANG_WAR ;
 int HAL_MAC_HANG_WAR ;
 scalar_t__ HAL_OK ;
 int HAL_PHYRESTART_CLR_WAR ;
 int HAL_RIFS_BB_HANG_WAR ;
 int HAL_RX_STUCK_LOW_BB_HANG_WAR ;
 scalar_t__ ar9300_get_capability (struct ath_hal*,int ,int ,int ) ;

void
ar9300_get_hw_hangs(struct ath_hal *ah, hal_hw_hangs_t *hangs)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    *hangs = 0;

    if (ar9300_get_capability(ah, HAL_CAP_BB_RIFS_HANG, 0, AH_NULL) == HAL_OK) {
        *hangs |= HAL_RIFS_BB_HANG_WAR;
    }
    if (ar9300_get_capability(ah, HAL_CAP_BB_DFS_HANG, 0, AH_NULL) == HAL_OK) {
        *hangs |= HAL_DFS_BB_HANG_WAR;
    }
    if (ar9300_get_capability(ah, HAL_CAP_BB_RX_CLEAR_STUCK_HANG, 0, AH_NULL)
        == HAL_OK)
    {
        *hangs |= HAL_RX_STUCK_LOW_BB_HANG_WAR;
    }
    if (ar9300_get_capability(ah, HAL_CAP_MAC_HANG, 0, AH_NULL) == HAL_OK) {
        *hangs |= HAL_MAC_HANG_WAR;
    }
    if (ar9300_get_capability(ah, HAL_CAP_PHYRESTART_CLR_WAR, 0, AH_NULL)
        == HAL_OK)
    {
        *hangs |= HAL_PHYRESTART_CLR_WAR;
    }

    ahp->ah_hang_wars = *hangs;
}
