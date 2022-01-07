
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_PHY_65NM_CH0_BIAS1 ;
 int AR_PHY_65NM_CH0_BIAS2 ;
 int AR_PHY_65NM_CH0_BIAS4 ;
 int EEP_DRIVE_STRENGTH ;
 unsigned long OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,unsigned long) ;
 int ar9300_eeprom_get (struct ath_hal_9300*,int ) ;

HAL_BOOL ar9300_drive_strength_apply(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    int drive_strength;
    unsigned long reg;

    drive_strength = ar9300_eeprom_get(ahp, EEP_DRIVE_STRENGTH);
    if (drive_strength) {
        reg = OS_REG_READ(ah, AR_PHY_65NM_CH0_BIAS1);
        reg &= ~0x00ffffc0;
        reg |= 0x5 << 21;
        reg |= 0x5 << 18;
        reg |= 0x5 << 15;
        reg |= 0x5 << 12;
        reg |= 0x5 << 9;
        reg |= 0x5 << 6;
        OS_REG_WRITE(ah, AR_PHY_65NM_CH0_BIAS1, reg);

        reg = OS_REG_READ(ah, AR_PHY_65NM_CH0_BIAS2);
        reg &= ~0xffffffe0;
        reg |= 0x5 << 29;
        reg |= 0x5 << 26;
        reg |= 0x5 << 23;
        reg |= 0x5 << 20;
        reg |= 0x5 << 17;
        reg |= 0x5 << 14;
        reg |= 0x5 << 11;
        reg |= 0x5 << 8;
        reg |= 0x5 << 5;
        OS_REG_WRITE(ah, AR_PHY_65NM_CH0_BIAS2, reg);

        reg = OS_REG_READ(ah, AR_PHY_65NM_CH0_BIAS4);
        reg &= ~0xff800000;
        reg |= 0x5 << 29;
        reg |= 0x5 << 26;
        reg |= 0x5 << 23;
        OS_REG_WRITE(ah, AR_PHY_65NM_CH0_BIAS4, reg);
    }
    return 0;
}
