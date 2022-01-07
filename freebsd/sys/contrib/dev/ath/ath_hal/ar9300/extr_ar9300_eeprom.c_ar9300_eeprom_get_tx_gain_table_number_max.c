
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_int8_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_TPC_7 ;
 int AR_PHY_TPC_7_TX_GAIN_TABLE_MAX ;
 unsigned long OS_REG_READ_FIELD (struct ath_hal*,int ,int ) ;

__attribute__((used)) static u_int8_t ar9300_eeprom_get_tx_gain_table_number_max(struct ath_hal *ah)
{
    unsigned long tx_gain_table_max;
    tx_gain_table_max = OS_REG_READ_FIELD(ah,
        AR_PHY_TPC_7, AR_PHY_TPC_7_TX_GAIN_TABLE_MAX);
    return tx_gain_table_max;
}
