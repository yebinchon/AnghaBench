
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR9300_DFS_PRSSI ;
 int AR9300_DFS_PRSSI_CAC ;
 int AR_PHY_RADAR_0 ;
 int AR_PHY_RADAR_0_ENA ;
 int AR_PHY_RADAR_0_PRSSI ;
 scalar_t__ AR_SREV_AR9580 (struct ath_hal*) ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int ,int) ;

void
ar9300_dfs_cac_war(struct ath_hal *ah, u_int32_t start)
{
    u_int32_t val;

    if (AR_SREV_AR9580(ah) || AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah)) {
        val = OS_REG_READ(ah, AR_PHY_RADAR_0);
        if (start) {
            val &= ~AR_PHY_RADAR_0_PRSSI;
            val |= SM(AR9300_DFS_PRSSI_CAC, AR_PHY_RADAR_0_PRSSI);
        } else {
            val &= ~AR_PHY_RADAR_0_PRSSI;
            val |= SM(AR9300_DFS_PRSSI, AR_PHY_RADAR_0_PRSSI);
        }
        OS_REG_WRITE(ah, AR_PHY_RADAR_0, val | AR_PHY_RADAR_0_ENA);

    }
}
