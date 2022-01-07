
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_RADAR_DC_PWR_THRESH ;
 int AR_PHY_RADAR_EXT ;
 int MAX_RADAR_DC_PWR_THRESH ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int SM (int ,int ) ;

void ar9300_set_radar_dc_thresh(struct ath_hal *ah)
{
    u_int32_t val;
    val = OS_REG_READ(ah, AR_PHY_RADAR_EXT);
    val &= ~AR_PHY_RADAR_DC_PWR_THRESH;
    val |= SM(MAX_RADAR_DC_PWR_THRESH, AR_PHY_RADAR_DC_PWR_THRESH);
    OS_REG_WRITE(ah, AR_PHY_RADAR_EXT, val);

    val = OS_REG_READ(ah, AR_PHY_RADAR_EXT);
}
