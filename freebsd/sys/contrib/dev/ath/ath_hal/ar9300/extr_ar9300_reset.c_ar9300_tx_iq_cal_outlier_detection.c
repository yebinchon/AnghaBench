
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct coeff_t {int*** mag_coeff; int*** phs_coeff; int* iqc_coeff; } ;
struct ath_hal {int dummy; } ;
typedef int int32_t ;
struct TYPE_3__ {int** tx_corr_coeff; int* num_measures; int channel; int one_time_txiqcal_done; } ;
typedef TYPE_1__ HAL_CHANNEL_INTERNAL ;
typedef scalar_t__ HAL_BOOL ;


 scalar_t__ ABS (int) ;
 int AH_TRUE ;
 int AR_PHY_CALIBRATED_GAINS_0 ;
 int AR_PHY_RX_IQCAL_CORR_B0 ;
 int AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN ;
 int AR_PHY_TX_IQCAL_CONTROL_3 ;
 int AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_01_B0_POSEIDON ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_23_B0_POSEIDON ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_45_B0_POSEIDON ;
 int AR_PHY_TX_IQCAL_CORR_COEFF_67_B0_POSEIDON ;
 int AR_PHY_TX_IQCAL_STATUS_B0 (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 int AR_SREV_SCORPION (struct ath_hal*) ;
 int HALASSERT (int) ;
 int HALDEBUG (struct ath_hal*,int ,char*,int,...) ;
 int HAL_DEBUG_CALIBRATE ;
 int HAL_DEBUG_FCS_RTT ;
 scalar_t__ MAX_MAG_DELTA ;
 int MAX_MEASUREMENT ;
 scalar_t__ MAX_PHS_DELTA ;
 int OS_REG_READ_FIELD (struct ath_hal*,int ,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int printf (char*,int,int,int,int) ;
 int ** tx_corr_coeff ;

__attribute__((used)) static void
ar9300_tx_iq_cal_outlier_detection(struct ath_hal *ah, HAL_CHANNEL_INTERNAL *ichan, u_int32_t num_chains,
    struct coeff_t *coeff, HAL_BOOL is_cal_reusable)
{
    int nmeasurement, ch_idx, im;
    int32_t magnitude, phase;
    int32_t magnitude_max, phase_max;
    int32_t magnitude_min, phase_min;

    int32_t magnitude_max_idx, phase_max_idx;
    int32_t magnitude_min_idx, phase_min_idx;

    int32_t magnitude_avg, phase_avg;
    int32_t outlier_mag_idx = 0;
    int32_t outlier_phs_idx = 0;


    if (AR_SREV_POSEIDON(ah)) {
        HALASSERT(num_chains == 0x1);

        tx_corr_coeff[0][0] = AR_PHY_TX_IQCAL_CORR_COEFF_01_B0_POSEIDON;
        tx_corr_coeff[1][0] = AR_PHY_TX_IQCAL_CORR_COEFF_01_B0_POSEIDON;
        tx_corr_coeff[2][0] = AR_PHY_TX_IQCAL_CORR_COEFF_23_B0_POSEIDON;
        tx_corr_coeff[3][0] = AR_PHY_TX_IQCAL_CORR_COEFF_23_B0_POSEIDON;
        tx_corr_coeff[4][0] = AR_PHY_TX_IQCAL_CORR_COEFF_45_B0_POSEIDON;
        tx_corr_coeff[5][0] = AR_PHY_TX_IQCAL_CORR_COEFF_45_B0_POSEIDON;
        tx_corr_coeff[6][0] = AR_PHY_TX_IQCAL_CORR_COEFF_67_B0_POSEIDON;
        tx_corr_coeff[7][0] = AR_PHY_TX_IQCAL_CORR_COEFF_67_B0_POSEIDON;
    }

    for (ch_idx = 0; ch_idx < num_chains; ch_idx++) {
        nmeasurement = OS_REG_READ_FIELD(ah,
            AR_PHY_TX_IQCAL_STATUS_B0(ah), AR_PHY_CALIBRATED_GAINS_0);
        if (nmeasurement > MAX_MEASUREMENT) {
            nmeasurement = MAX_MEASUREMENT;
        }

        if (!AR_SREV_SCORPION(ah)) {




            magnitude_max = -64;
            phase_max = -64;
            magnitude_min = 63;
            phase_min = 63;
            magnitude_avg = 0;
            phase_avg = 0;
            magnitude_max_idx = 0;
            magnitude_min_idx = 0;
            phase_max_idx = 0;
            phase_min_idx = 0;


            if (nmeasurement > 1) {




                for (im = 0; im < nmeasurement; im++) {
                    magnitude = coeff->mag_coeff[ch_idx][im][0];
                    phase = coeff->phs_coeff[ch_idx][im][0];

                    magnitude_avg = magnitude_avg + magnitude;
                    phase_avg = phase_avg + phase;
                    if (magnitude > magnitude_max) {
                        magnitude_max = magnitude;
                        magnitude_max_idx = im;
                    }
                    if (magnitude < magnitude_min) {
                        magnitude_min = magnitude;
                        magnitude_min_idx = im;
                    }
                    if (phase > phase_max) {
                        phase_max = phase;
                        phase_max_idx = im;
                    }
                    if (phase < phase_min) {
                        phase_min = phase;
                        phase_min_idx = im;
                    }
                }

                for (im = 0; im < nmeasurement; im++) {
                    magnitude = coeff->mag_coeff[ch_idx][im][0];
                    phase = coeff->phs_coeff[ch_idx][im][0];
                    if ((ABS(magnitude) < ABS(magnitude_max)) ||
                        (ABS(magnitude) < ABS(magnitude_min)))
                    {
                        magnitude_avg = magnitude_avg + magnitude;
                    }
                    if ((ABS(phase) < ABS(phase_max)) ||
                        (ABS(phase) < ABS(phase_min)))
                    {
                        phase_avg = phase_avg + phase;
                    }
                }
                magnitude_avg = magnitude_avg / (nmeasurement - 1);
                phase_avg = phase_avg / (nmeasurement - 1);


                if (ABS(magnitude_max - magnitude_min) > MAX_MAG_DELTA) {
                    if (ABS(magnitude_max - magnitude_avg) >
                        ABS(magnitude_min - magnitude_avg))
                    {

                        outlier_mag_idx = magnitude_max_idx;
                    } else {

                        outlier_mag_idx = magnitude_min_idx;
                    }
                    coeff->mag_coeff[ch_idx][outlier_mag_idx][0] = magnitude_avg;
                    coeff->phs_coeff[ch_idx][outlier_mag_idx][0] = phase_avg;
                    HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                        "[ch%d][outlier mag gain%d]:: "
                        "mag_avg = %d (/128), phase_avg = %d (/256)\n",
                        ch_idx, outlier_mag_idx, magnitude_avg, phase_avg);
                }

                if (ABS(phase_max - phase_min) > MAX_PHS_DELTA) {
                    if (ABS(phase_max-phase_avg) > ABS(phase_min - phase_avg)) {

                        outlier_phs_idx = phase_max_idx;
                    } else{

                        outlier_phs_idx = phase_min_idx;
                    }
                    coeff->mag_coeff[ch_idx][outlier_phs_idx][0] = magnitude_avg;
                    coeff->phs_coeff[ch_idx][outlier_phs_idx][0] = phase_avg;
                    HALDEBUG(ah, HAL_DEBUG_CALIBRATE,
                        "[ch%d][outlier phs gain%d]:: "
                        "mag_avg = %d (/128), phase_avg = %d (/256)\n",
                        ch_idx, outlier_phs_idx, magnitude_avg, phase_avg);
                }
            }
        }


        for (im = 0; im < nmeasurement; im++) {
            magnitude = coeff->mag_coeff[ch_idx][im][0];
            phase = coeff->phs_coeff[ch_idx][im][0];






            coeff->iqc_coeff[0] = (phase & 0x7f) | ((magnitude & 0x7f) << 7);

            if ((im % 2) == 0) {
                OS_REG_RMW_FIELD(ah,
                    tx_corr_coeff[im][ch_idx],
                    AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE,
                    coeff->iqc_coeff[0]);
            } else {
                OS_REG_RMW_FIELD(ah,
                    tx_corr_coeff[im][ch_idx],
                    AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE,
                    coeff->iqc_coeff[0]);
            }



        }



    }

    OS_REG_RMW_FIELD(ah, AR_PHY_TX_IQCAL_CONTROL_3,
                     AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, 0x1);
    OS_REG_RMW_FIELD(ah, AR_PHY_RX_IQCAL_CORR_B0,
                     AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, 0x1);
}
