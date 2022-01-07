
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ath_hal {int dummy; } ;
typedef int ar9300_eeprom_t ;
struct TYPE_2__ {int ah_eeprom; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;

u_int
ar9300_eeprom_dump_support(struct ath_hal *ah, void **pp_e)
{
    *pp_e = &(AH9300(ah)->ah_eeprom);
    return sizeof(ar9300_eeprom_t);
}
