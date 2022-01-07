
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {int ia_rows; } ;
struct ath_hal_9300 {int ah_wa_reg_val; TYPE_2__ ah_ini_pcie_serdes_low_power; TYPE_2__ ah_ini_pcie_serdes; } ;
struct TYPE_4__ {int ath_hal_war70c; int ath_hal_pcie_power_save_enable; int ath_hal_pcie_waen; scalar_t__ ath_hal_pcie_ser_des_write; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_6__ {scalar_t__ ah_ispcie; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_PCIE_PM_CTRL ;
 int AR_PCIE_PM_CTRL_ENA ;
 scalar_t__ AR_SREV_JUPITER (struct ath_hal*) ;
 int AR_WA ;
 int INI_RA (TYPE_2__*,int,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int,int) ;

void
ar9300_config_pci_power_save(struct ath_hal *ah, int restore, int power_off)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    int i;

    if (AH_PRIVATE(ah)->ah_ispcie != AH_TRUE) {
        return;
    }





    if (AR_SREV_JUPITER(ah)) {
        u_int32_t val = ah->ah_config.ath_hal_war70c;
        if ((val & 0xff000000) == 0x17000000) {
            val &= 0x00ffffff;
            val |= 0x27000000;
            OS_REG_WRITE(ah, 0x570c, val);
        }
    }


    if (ah->ah_config.ath_hal_pcie_power_save_enable == 2) {
        return;
    }


    if (!restore) {

        OS_REG_SET_BIT(ah,
            AR_HOSTIF_REG(ah, AR_PCIE_PM_CTRL), AR_PCIE_PM_CTRL_ENA);





        if (ah->ah_config.ath_hal_pcie_waen) {
            OS_REG_WRITE(ah,
                AR_HOSTIF_REG(ah, AR_WA),
                ah->ah_config.ath_hal_pcie_waen);
        } else {

            OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_WA), ahp->ah_wa_reg_val);
        }
    }


    if (ah->ah_config.ath_hal_pcie_ser_des_write) {
        if (power_off) {
            for (i = 0; i < ahp->ah_ini_pcie_serdes.ia_rows; i++) {
                OS_REG_WRITE(ah,
                    INI_RA(&ahp->ah_ini_pcie_serdes, i, 0),
                    INI_RA(&ahp->ah_ini_pcie_serdes, i, 1));
            }
        } else {
            for (i = 0; i < ahp->ah_ini_pcie_serdes_low_power.ia_rows; i++) {
                OS_REG_WRITE(ah,
                    INI_RA(&ahp->ah_ini_pcie_serdes_low_power, i, 0),
                    INI_RA(&ahp->ah_ini_pcie_serdes_low_power, i, 1));
            }
        }
    }

}
