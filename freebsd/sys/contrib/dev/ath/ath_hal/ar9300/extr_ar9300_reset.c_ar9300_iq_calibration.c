
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct ath_hal_9300 {int* ah_total_power_meas_i; int* ah_total_power_meas_q; int* ah_total_iq_corr_meas; int* ah_rx_cal_corr; int ah_rx_cal_complete; scalar_t__ ah_rx_cal_chan_flag; int ah_rx_cal_chan; } ;
struct ath_hal {int dummy; } ;
typedef int int32_t ;
struct TYPE_5__ {int ah_curchan; } ;
struct TYPE_4__ {int channel; } ;
typedef TYPE_1__ HAL_CHANNEL_INTERNAL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;



 int AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE ;
 int AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF ;
 int AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF ;
 int HALDEBUG (struct ath_hal*,int ,char*,int const,...) ;
 int HAL_DEBUG_CALIBRATE ;
 int OS_REG_READ (struct ath_hal*,int const) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int const,int,int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int const,int) ;
 TYPE_1__* ath_hal_checkchannel (struct ath_hal*,int ) ;

void
ar9300_iq_calibration(struct ath_hal *ah, u_int8_t num_chains)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    u_int32_t power_meas_q, power_meas_i, iq_corr_meas;
    u_int32_t q_coff_denom, i_coff_denom;
    int32_t q_coff, i_coff;
    int iq_corr_neg, i;
    HAL_CHANNEL_INTERNAL *ichan;
    static const u_int32_t offset_array[3] = {
        130,
        129,
        128,
    };

    ichan = ath_hal_checkchannel(ah, AH_PRIVATE(ah)->ah_curchan);

    for (i = 0; i < num_chains; i++) {
        power_meas_i = ahp->ah_total_power_meas_i[i];
        power_meas_q = ahp->ah_total_power_meas_q[i];
        iq_corr_meas = ahp->ah_total_iq_corr_meas[i];

        HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
            "Starting IQ Cal and Correction for Chain %d\n", i);
        HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
            "Orignal: Chn %diq_corr_meas = 0x%08x\n",
            i, ahp->ah_total_iq_corr_meas[i]);

        iq_corr_neg = 0;


        if (iq_corr_meas > 0x80000000) {
            iq_corr_meas = (0xffffffff - iq_corr_meas) + 1;
            iq_corr_neg = 1;
        }

        HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
            "Chn %d pwr_meas_i = 0x%08x\n", i, power_meas_i);
        HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
            "Chn %d pwr_meas_q = 0x%08x\n", i, power_meas_q);
        HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
            "iq_corr_neg is 0x%08x\n", iq_corr_neg);

        i_coff_denom = (power_meas_i / 2 + power_meas_q / 2) / 256;
        q_coff_denom = power_meas_q / 64;


        if ((i_coff_denom != 0) && (q_coff_denom != 0)) {

            i_coff = iq_corr_meas / i_coff_denom;
            q_coff = power_meas_i / q_coff_denom - 64;
            HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                "Chn %d i_coff = 0x%08x\n", i, i_coff);
            HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                "Chn %d q_coff = 0x%08x\n", i, q_coff);


            if (i_coff >= 63) {
                i_coff = 63;
            } else if (i_coff <= -63) {
                i_coff = -63;
            }


            if (iq_corr_neg == 0x0) {
                i_coff = -i_coff;
            }


            if (q_coff >= 63) {
                q_coff = 63;
            } else if (q_coff <= -63) {
                q_coff = -63;
            }

            i_coff = i_coff & 0x7f;
            q_coff = q_coff & 0x7f;

            HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                "Chn %d : i_coff = 0x%x  q_coff = 0x%x\n", i, i_coff, q_coff);
            HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                "Register offset (0x%04x) before update = 0x%x\n",
                offset_array[i], OS_REG_READ(ah, offset_array[i]));

            OS_REG_RMW_FIELD(ah, offset_array[i],
                AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF, i_coff);
            OS_REG_RMW_FIELD(ah, offset_array[i],
                AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF, q_coff);


     if (ichan != ((void*)0)) {
            ahp->ah_rx_cal_corr[i] = OS_REG_READ(ah, offset_array[i]) & 0x7fff;
            ahp->ah_rx_cal_complete = AH_TRUE;
            ahp->ah_rx_cal_chan = ichan->channel;

            ahp->ah_rx_cal_chan_flag = 0;
     } else {

             ahp->ah_rx_cal_complete = AH_FALSE;

     }

            HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                "Register offset (0x%04x) QI COFF (bitfields 0x%08x) "
                "after update = 0x%x\n",
                offset_array[i], AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF,
                OS_REG_READ(ah, offset_array[i]));
            HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                "Register offset (0x%04x) QQ COFF (bitfields 0x%08x) "
                "after update = 0x%x\n",
                offset_array[i], AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF,
                OS_REG_READ(ah, offset_array[i]));
            HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                "IQ Cal and Correction done for Chain %d\n", i);
        }
    }

    OS_REG_SET_BIT(ah,
        130, AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE);
    HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
        "IQ Cal and Correction (offset 0x%04x) enabled "
        "(bit position 0x%08x). New Value 0x%08x\n",
        (unsigned) (130),
        AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE,
        OS_REG_READ(ah, 130));
}
