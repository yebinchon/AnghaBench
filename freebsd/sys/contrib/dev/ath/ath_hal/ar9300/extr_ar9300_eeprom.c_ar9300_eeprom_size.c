
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct ath_hal {int dummy; } ;
typedef int int32_t ;


 scalar_t__ ar9300_eeprom_read_word (struct ath_hal*,int,scalar_t__*) ;

int32_t
ar9300_eeprom_size(struct ath_hal *ah)
{
    u_int16_t data;



    if (ar9300_eeprom_read_word(ah, 2047, &data)) {
        if (data != 0) {
            return 4096;
        }
    }



    if (ar9300_eeprom_read_word(ah, 1023, &data)) {
        if (data != 0) {
            return 2048;
        }
    }



    if (ar9300_eeprom_read_word(ah, 511, &data)) {
        if (data != 0) {
            return 1024;
        }
    }
    return 0;
}
