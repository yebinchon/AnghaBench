
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_PHY_CL_TAB_0 ;
 int AR_PHY_CL_TAB_0_CL_GAIN_MOD ;
 int AR_PHY_CL_TAB_1 ;
 int AR_PHY_CL_TAB_1_CL_GAIN_MOD ;
 int AR_PHY_CL_TAB_2 ;
 int AR_PHY_CL_TAB_2_CL_GAIN_MOD ;
 int AR_PHY_PAPRD_TRAINER_STAT1 ;
 int AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE ;
 int AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON ;
 int AR_PHY_THERM_ADC_4 ;
 int AR_PHY_THERM_ADC_4_LATEST_THERM_VALUE ;
 int AR_PHY_THERM_ADC_4_LATEST_VOLT_VALUE ;
 int AR_PHY_TPC_11_B0 ;
 int AR_PHY_TPC_11_B0_OLPC_GAIN_DELTA_0 ;
 int AR_PHY_TPC_11_B1 ;
 int AR_PHY_TPC_11_B1_OLPC_GAIN_DELTA_1 ;
 int AR_PHY_TPC_11_B2 ;
 int AR_PHY_TPC_11_B2_OLPC_GAIN_DELTA_2 ;
 int AR_PHY_TPC_12 ;
 int AR_PHY_TPC_12_DESIRED_SCALE_HT40_5 ;
 int AR_PHY_TPC_18 ;
 int AR_PHY_TPC_18_ALT_THERM_CAL_VALUE ;
 int AR_PHY_TPC_18_ALT_VOLT_CAL_VALUE ;
 int AR_PHY_TPC_19 ;
 int AR_PHY_TPC_19_ALPHA_THERM ;
 int AR_PHY_TPC_19_ALT_ALPHA_VOLT ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 int OS_REG_READ_FIELD (struct ath_hal*,int ,int ) ;
 int OS_REG_READ_FIELD_ALT (struct ath_hal*,int ,int ) ;
 int OS_REG_RMW_FIELD_ALT (struct ath_hal*,int ,int ,int ) ;
 int ath_hal_printf (struct ath_hal*,char*,int,int,int,int,int,int,int) ;

__attribute__((used)) static unsigned int ar9300_get_desired_gain_for_chain(struct ath_hal *ah,
    int chain_num, int target_power)
{
    int olpc_gain_delta = 0;
    int alpha_therm = 0, alpha_volt = 0;
    int therm_cal_value = 0, volt_cal_value = 0;
    int latest_therm_value = 0, latest_volt_value = 0, olpc_gain_delta_tmp = 0;
    int thermal_gain_corr = 0, voltage_gain_corr = 0, desired_scale = 0;
    int desired_gain = 0;
    int cl_gain_mod = 0;


    if (AR_SREV_POSEIDON(ah)) {
        OS_REG_RMW_FIELD_ALT(ah, AR_PHY_PAPRD_TRAINER_STAT1_POSEIDON,
            AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, 0);
    } else {
        OS_REG_RMW_FIELD_ALT(ah, AR_PHY_PAPRD_TRAINER_STAT1,
            AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, 0);
    }

    desired_scale =
        OS_REG_READ_FIELD_ALT(ah, AR_PHY_TPC_12,
        AR_PHY_TPC_12_DESIRED_SCALE_HT40_5);

    alpha_therm =
        OS_REG_READ_FIELD(ah, AR_PHY_TPC_19, AR_PHY_TPC_19_ALPHA_THERM);

    alpha_volt =
        OS_REG_READ_FIELD_ALT(ah, AR_PHY_TPC_19, AR_PHY_TPC_19_ALT_ALPHA_VOLT);


    therm_cal_value =
        OS_REG_READ_FIELD_ALT(ah, AR_PHY_TPC_18,
        AR_PHY_TPC_18_ALT_THERM_CAL_VALUE);

    volt_cal_value =
        OS_REG_READ_FIELD_ALT(ah, AR_PHY_TPC_18,
        AR_PHY_TPC_18_ALT_VOLT_CAL_VALUE);


    latest_therm_value =
        OS_REG_READ_FIELD_ALT(ah, AR_PHY_THERM_ADC_4,
        AR_PHY_THERM_ADC_4_LATEST_THERM_VALUE);

    latest_volt_value =
        OS_REG_READ_FIELD_ALT(ah, AR_PHY_THERM_ADC_4,
        AR_PHY_THERM_ADC_4_LATEST_VOLT_VALUE);
    if (chain_num == 0) {
        olpc_gain_delta_tmp =
            OS_REG_READ_FIELD_ALT(ah, AR_PHY_TPC_11_B0,
            AR_PHY_TPC_11_B0_OLPC_GAIN_DELTA_0);
        cl_gain_mod = OS_REG_READ_FIELD_ALT(ah, AR_PHY_CL_TAB_0,
            AR_PHY_CL_TAB_0_CL_GAIN_MOD);
    } else if (chain_num == 1) {
        if (!AR_SREV_POSEIDON(ah)) {
            olpc_gain_delta_tmp =
                OS_REG_READ_FIELD_ALT(ah, AR_PHY_TPC_11_B1,
                AR_PHY_TPC_11_B1_OLPC_GAIN_DELTA_1);
            cl_gain_mod = OS_REG_READ_FIELD_ALT(ah, AR_PHY_CL_TAB_1,
                AR_PHY_CL_TAB_1_CL_GAIN_MOD);
        }
    } else if (chain_num == 2) {
        if (!AR_SREV_POSEIDON(ah)) {
            olpc_gain_delta_tmp =
                OS_REG_READ_FIELD_ALT(ah, AR_PHY_TPC_11_B2,
                AR_PHY_TPC_11_B2_OLPC_GAIN_DELTA_2);
            cl_gain_mod = OS_REG_READ_FIELD_ALT(ah, AR_PHY_CL_TAB_2,
                AR_PHY_CL_TAB_2_CL_GAIN_MOD);
        }
    } else {

    }

    if (olpc_gain_delta_tmp < 128) {
        olpc_gain_delta = olpc_gain_delta_tmp;
    } else {
        olpc_gain_delta = olpc_gain_delta_tmp - 256;
    }

    thermal_gain_corr =
        (int) (alpha_therm * (latest_therm_value - therm_cal_value) +
        128) >> 8;
    voltage_gain_corr =
        (int) (alpha_volt * (latest_volt_value - volt_cal_value) + 64) >> 7;
    desired_gain =
        target_power - olpc_gain_delta - thermal_gain_corr -
        voltage_gain_corr + desired_scale + cl_gain_mod;
    return (unsigned int) desired_gain;
}
