
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int * reg_dmn; } ;
struct TYPE_5__ {TYPE_1__ base_eep_header; } ;
typedef TYPE_2__ ar9300_eeprom_t ;
struct TYPE_6__ {TYPE_2__ ah_eeprom; } ;


 TYPE_3__* AH9300 (struct ath_hal*) ;

u_int16_t *ar9300_regulatory_domain_get(struct ath_hal *ah)
{
    ar9300_eeprom_t *eep = &AH9300(ah)->ah_eeprom;
    return eep->base_eep_header.reg_dmn;
}
