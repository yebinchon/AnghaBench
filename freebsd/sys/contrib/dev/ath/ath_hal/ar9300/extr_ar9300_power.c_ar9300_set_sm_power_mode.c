
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int ah_sm_power_mode; int ah_rx_chainmask; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_SMPS_MODE ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_NULL ;
 int AR_PCU_SMPS ;
 int AR_PCU_SMPS_HPWR_CHNMSK ;
 int AR_PCU_SMPS_HW_CTRL_EN ;
 int AR_PCU_SMPS_LPWR_CHNMSK ;
 int AR_PCU_SMPS_LPWR_CHNMSK_VAL ;
 int AR_PCU_SMPS_MAC_CHAINMASK ;
 int AR_PCU_SMPS_SW_CTRL_HPWR ;
 int HAL_CAP_DYNAMIC_SMPS ;
 scalar_t__ HAL_OK ;




 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int ,int ) ;
 scalar_t__ ar9300_get_capability (struct ath_hal*,int ,int ,int ) ;

void
ar9300_set_sm_power_mode(struct ath_hal *ah, HAL_SMPS_MODE mode)
{
    int regval;
    struct ath_hal_9300 *ahp = AH9300(ah);

    if (ar9300_get_capability(ah, HAL_CAP_DYNAMIC_SMPS, 0, AH_NULL) != HAL_OK) {
        return;
    }


    regval = SM(AR_PCU_SMPS_LPWR_CHNMSK_VAL, AR_PCU_SMPS_LPWR_CHNMSK) |
             SM(ahp->ah_rx_chainmask, AR_PCU_SMPS_HPWR_CHNMSK) |
             AR_PCU_SMPS_MAC_CHAINMASK;


    switch (mode) {
    case 128:
        OS_REG_WRITE(ah, AR_PCU_SMPS, regval);
        break;
    case 129:
        OS_REG_WRITE(ah, AR_PCU_SMPS, regval | AR_PCU_SMPS_SW_CTRL_HPWR);
        break;
    case 130:
        OS_REG_WRITE(ah, AR_PCU_SMPS, regval | AR_PCU_SMPS_HW_CTRL_EN);
        break;
    case 131:
        OS_REG_WRITE(ah, AR_PCU_SMPS, 0);
        break;
    default:
        break;
    }
    ahp->ah_sm_power_mode = mode;
}
