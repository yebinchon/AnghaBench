
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_RADAR_0 ;
 int AR_PHY_RADAR_0_ENA ;
 int AR_PHY_RADAR_0_FFT_ENA ;
 int AR_PHY_RADAR_0_HEIGHT ;
 int AR_PHY_RADAR_0_RRSSI ;
 int AR_PHY_RADAR_EXT ;
 int AR_PHY_RADAR_EXT_ENA ;
 int AR_RX_FILTER ;
 int MAX_RADAR_HEIGHT ;
 int MAX_RADAR_RSSI_THRESH ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int ,int) ;

void
ar9300_disable_radar(struct ath_hal *ah)
{
    u_int32_t val;


    val = OS_REG_READ(ah, AR_PHY_RADAR_0);
    val |= AR_PHY_RADAR_0_FFT_ENA;


    val &= ~AR_PHY_RADAR_0_RRSSI;
    val |= SM(MAX_RADAR_RSSI_THRESH, AR_PHY_RADAR_0_RRSSI);

    val &= ~AR_PHY_RADAR_0_HEIGHT;
    val |= SM(MAX_RADAR_HEIGHT, AR_PHY_RADAR_0_HEIGHT);

    val &= ~(AR_PHY_RADAR_0_ENA);
    OS_REG_WRITE(ah, AR_PHY_RADAR_0, val);


    val = OS_REG_READ(ah, AR_PHY_RADAR_EXT);
    OS_REG_WRITE(ah, AR_PHY_RADAR_EXT, val & ~AR_PHY_RADAR_EXT_ENA);

    val = OS_REG_READ(ah, AR_RX_FILTER);
    val |= (1 << 13);
    OS_REG_WRITE(ah, AR_RX_FILTER, val);
}
