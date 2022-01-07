
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal_9300 {scalar_t__* ah_total_iq_corr_meas; void** ah_total_power_meas_q; void** ah_total_power_meas_i; int ah_cal_samples; } ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ int32_t ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 scalar_t__ AR_PHY_CAL_MEAS_0 (int) ;
 scalar_t__ AR_PHY_CAL_MEAS_1 (int) ;
 scalar_t__ AR_PHY_CAL_MEAS_2 (int) ;
 int HALDEBUG (struct ath_hal*,int ,char*,int ,int,unsigned int,void*,unsigned int,void*,unsigned int,scalar_t__) ;
 int HAL_DEBUG_CALIBRATE ;
 void* OS_REG_READ (struct ath_hal*,scalar_t__) ;

void
ar9300_iq_cal_collect(struct ath_hal *ah, u_int8_t num_chains)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    int i;




    for (i = 0; i < num_chains; i++) {
        ahp->ah_total_power_meas_i[i] = OS_REG_READ(ah, AR_PHY_CAL_MEAS_0(i));
        ahp->ah_total_power_meas_q[i] = OS_REG_READ(ah, AR_PHY_CAL_MEAS_1(i));
        ahp->ah_total_iq_corr_meas[i] =
            (int32_t) OS_REG_READ(ah, AR_PHY_CAL_MEAS_2(i));
        HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
            "%d: Chn %d "
            "Reg Offset(0x%04x)pmi=0x%08x; "
            "Reg Offset(0x%04x)pmq=0x%08x; "
            "Reg Offset (0x%04x)iqcm=0x%08x;\n",
            ahp->ah_cal_samples,
            i,
            (unsigned) AR_PHY_CAL_MEAS_0(i),
            ahp->ah_total_power_meas_i[i],
            (unsigned) AR_PHY_CAL_MEAS_1(i),
            ahp->ah_total_power_meas_q[i],
            (unsigned) AR_PHY_CAL_MEAS_2(i),
            ahp->ah_total_iq_corr_meas[i]);
    }
}
