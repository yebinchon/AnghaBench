
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_8__ {int version; } ;
struct TYPE_6__ {TYPE_4__ base_eep_header; TYPE_3__* modal_header; } ;
struct TYPE_5__ {TYPE_2__ def; } ;
struct ath_hal_9300 {TYPE_1__ ah_eeprom; } ;
typedef TYPE_2__ ar9300_eeprom_t ;
struct TYPE_7__ {scalar_t__ use_ant1; } ;
typedef TYPE_3__ MODAL_EEPDEF_HEADER ;
typedef scalar_t__ HAL_FREQ_BAND ;
typedef TYPE_4__ BASE_EEPDEF_HEADER ;


 scalar_t__ HAL_FREQ_BAND_2GHZ ;

u_int8_t
ar9300_eeprom_get_num_ant_config(struct ath_hal_9300 *ahp,
    HAL_FREQ_BAND freq_band)
{
    return 1;

}
