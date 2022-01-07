
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int * ant_ctrl_chain; } ;
struct TYPE_5__ {int * ant_ctrl_chain; } ;
struct TYPE_7__ {TYPE_2__ modal_header_5g; TYPE_1__ modal_header_2g; } ;
typedef TYPE_3__ ar9300_eeprom_t ;
struct TYPE_8__ {TYPE_3__ ah_eeprom; } ;
typedef scalar_t__ HAL_BOOL ;


 TYPE_4__* AH9300 (struct ath_hal*) ;
 int OSPREY_MAX_CHAINS ;

u_int16_t ar9300_ant_ctrl_chain_get(struct ath_hal *ah, int chain,
    HAL_BOOL is_2ghz)
{
    ar9300_eeprom_t *eep = &AH9300(ah)->ah_eeprom;
    if (chain >= 0 && chain < OSPREY_MAX_CHAINS) {
        if (is_2ghz) {
            return eep->modal_header_2g.ant_ctrl_chain[chain];
        } else {
            return eep->modal_header_5g.ant_ctrl_chain[chain];
        }
    }
    return 0;
}
