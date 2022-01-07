
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
struct TYPE_7__ {unsigned int tx_gain_cap; } ;
struct TYPE_6__ {unsigned int tx_gain_cap; } ;
struct TYPE_5__ {scalar_t__ misc_enable; } ;
struct TYPE_8__ {TYPE_3__ modal_header_5g; TYPE_2__ modal_header_2g; TYPE_1__ base_ext1; } ;
struct ath_hal_9300 {TYPE_4__ ah_eeprom; } ;
struct ath_hal {int dummy; } ;
typedef TYPE_4__ ar9300_eeprom_t ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 int AR_PHY_TPC_7 ;
 int AR_PHY_TPC_7_TX_GAIN_TABLE_MAX ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,unsigned int) ;

u_int8_t ar9300_eeprom_tx_gain_table_index_max_apply(struct ath_hal *ah, u_int16_t channel)
{
    unsigned int index;
    ar9300_eeprom_t *ahp_Eeprom;
    struct ath_hal_9300 *ahp = AH9300(ah);

    ahp_Eeprom = &ahp->ah_eeprom;

    if (ahp_Eeprom->base_ext1.misc_enable == 0)
        return AH_FALSE;

    if (channel < 4000)
    {
        index = ahp_Eeprom->modal_header_2g.tx_gain_cap;
    }
    else
    {
        index = ahp_Eeprom->modal_header_5g.tx_gain_cap;
    }

    OS_REG_RMW_FIELD(ah,
        AR_PHY_TPC_7, AR_PHY_TPC_7_TX_GAIN_TABLE_MAX, index);
    return AH_TRUE;
}
