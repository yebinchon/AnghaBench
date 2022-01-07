
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_9__ {void* op_flags; } ;
struct TYPE_11__ {int txrx_mask; int txrxgain; TYPE_1__ op_cap_flags; } ;
struct TYPE_12__ {int* mac_addr; TYPE_3__ base_eep_header; } ;
struct ath_hal_9300 {int try_dram; int try_eeprom; int try_otp; int try_nand; int try_flash; int ah_emu_eeprom; TYPE_4__ ah_eeprom; scalar_t__ calibration_data_try_address; int calibration_data_try; scalar_t__ calibration_data_source_address; int calibration_data_source; } ;
struct ath_hal {int dummy; } ;
typedef TYPE_4__ ar9300_eeprom_t ;
struct TYPE_10__ {scalar_t__ ath_hal_skip_eeprom_read; } ;
struct TYPE_13__ {TYPE_2__ ah_config; int ah_getSpurChan; } ;
typedef int HAL_STATUS ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 TYPE_8__* AH_PRIVATE (struct ath_hal*) ;
 void* AR9300_OPFLAGS_11G ;
 scalar_t__ AR_SREV_HONEYBEE (struct ath_hal*) ;
 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ AR_SREV_SCORPION (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int FLASH_BASE_CALDATA_OFFSET ;
 int HAL_EIO ;
 int HAL_OK ;
 int ar9300_calibration_data_read_flash (struct ath_hal*,int ,int*,int) ;
 int ar9300_eeprom_get_spur_chan ;
 int ar9300_eeprom_restore (struct ath_hal*) ;
 int ar9300_eeprom_struct_size () ;
 size_t ar9300_eeprom_template_default ;
 int ar9300_fill_eeprom (struct ath_hal*) ;
 int ar9300_flash_map (struct ath_hal*) ;
 TYPE_4__ ar9300_template_ap121 ;
 TYPE_4__ ar9300_template_generic ;
 int ath_hal_printf (struct ath_hal*,char*) ;
 int calibration_data_flash ;
 int calibration_data_none ;
 int calibration_data_source ;
 int calibration_data_try ;
 TYPE_4__** default9300 ;
 int printf (char*,int) ;

HAL_STATUS
ar9300_eeprom_attach(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    ahp->try_dram = 1;
    ahp->try_eeprom = 1;
    ahp->try_otp = 1;



    ahp->try_flash = 1;

    ahp->calibration_data_source = calibration_data_none;
    ahp->calibration_data_source_address = 0;
    ahp->calibration_data_try = calibration_data_try;
    ahp->calibration_data_try_address = 0;





    ar9300_flash_map(ah);





    AH_PRIVATE(ah)->ah_getSpurChan = ar9300_eeprom_get_spur_chan;
    ahp->ah_emu_eeprom = 1;
    if (AR_SREV_HORNET(ah) || AR_SREV_WASP(ah) || AR_SREV_SCORPION(ah)
        || AR_SREV_HONEYBEE(ah)) {
        ahp->try_eeprom = 0;
    }

    if (AR_SREV_HONEYBEE(ah)) {
        ahp->try_otp = 0;
    }

    if (!ar9300_eeprom_restore(ah)) {
        return HAL_EIO;
    }
    return HAL_OK;

}
