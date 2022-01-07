
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 scalar_t__ AR9300_EEPROM_OFFSET ;
 int AR9300_EEPROM_S ;
 int AR_EEPROM_STATUS_DATA ;
 int AR_EEPROM_STATUS_DATA_BUSY ;
 int AR_EEPROM_STATUS_DATA_PROT_ACCESS ;
 int AR_EEPROM_STATUS_DATA_VAL ;
 scalar_t__ AR_HOSTIF_REG (struct ath_hal*,int ) ;
 scalar_t__ AR_SREV_OSPREY (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,scalar_t__) ;
 int ath_hal_wait (struct ath_hal*,scalar_t__,int,int ) ;

HAL_BOOL
ar9300_eeprom_read_word(struct ath_hal *ah, u_int off, u_int16_t *data)
{
    if (AR_SREV_OSPREY(ah) || AR_SREV_POSEIDON(ah))
    {
        (void) OS_REG_READ(ah, AR9300_EEPROM_OFFSET + (off << AR9300_EEPROM_S));
        if (!ath_hal_wait(ah,
     AR_HOSTIF_REG(ah, AR_EEPROM_STATUS_DATA),
     AR_EEPROM_STATUS_DATA_BUSY | AR_EEPROM_STATUS_DATA_PROT_ACCESS,
     0))
 {
            return AH_FALSE;
 }
        *data = MS(OS_REG_READ(ah,
          AR_HOSTIF_REG(ah, AR_EEPROM_STATUS_DATA)), AR_EEPROM_STATUS_DATA_VAL);
       return AH_TRUE;
    }
    else
    {
        *data = 0;
        return AH_FALSE;
    }
}
