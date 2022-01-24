#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct coeff_t {int*** mag_coeff; int*** phs_coeff; int* iqc_coeff; } ;
struct ath_hal {int dummy; } ;
typedef  int int32_t ;
struct TYPE_3__ {int** tx_corr_coeff; int* num_measures; int /*<<< orphan*/  channel; int /*<<< orphan*/  one_time_txiqcal_done; } ;
typedef  TYPE_1__ HAL_CHANNEL_INTERNAL ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_PHY_CALIBRATED_GAINS_0 ; 
 int /*<<< orphan*/  AR_PHY_RX_IQCAL_CORR_B0 ; 
 int /*<<< orphan*/  AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_3 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_01_B0_POSEIDON ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_23_B0_POSEIDON ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_45_B0_POSEIDON ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_67_B0_POSEIDON ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  HAL_DEBUG_CALIBRATE ; 
 int /*<<< orphan*/  HAL_DEBUG_FCS_RTT ; 
 scalar_t__ MAX_MAG_DELTA ; 
 int MAX_MEASUREMENT ; 
 scalar_t__ MAX_PHS_DELTA ; 
 int FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,int) ; 
 int /*<<< orphan*/ ** tx_corr_coeff ; 

__attribute__((used)) static void
FUNC9(struct ath_hal *ah, HAL_CHANNEL_INTERNAL *ichan, u_int32_t num_chains,
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


    if (FUNC2(ah)) {
        FUNC4(num_chains == 0x1);

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
        nmeasurement = FUNC6(ah,
            FUNC1(ah), AR_PHY_CALIBRATED_GAINS_0);
        if (nmeasurement > MAX_MEASUREMENT) {
            nmeasurement = MAX_MEASUREMENT;
        }

        if (!FUNC3(ah)) {
            /*
             * reset max/min variable to min/max values so that
             * we always start with 1st calibrated gain value
             */
            magnitude_max = -64;
            phase_max     = -64;
            magnitude_min = 63;
            phase_min     = 63;
            magnitude_avg = 0;
            phase_avg     = 0;
            magnitude_max_idx = 0;
            magnitude_min_idx = 0;
            phase_max_idx = 0;
            phase_min_idx = 0;

            /* detect outlier only if nmeasurement > 1 */
            if (nmeasurement > 1) {
                /* printf("----------- start outlier detection -----------\n"); */
                /*
                 * find max/min and phase/mag mismatch across all calibrated gains
                 */
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
                /* find average (exclude max abs value) */
                for (im = 0; im < nmeasurement; im++) {
                    magnitude = coeff->mag_coeff[ch_idx][im][0];
                    phase = coeff->phs_coeff[ch_idx][im][0];
                    if ((FUNC0(magnitude) < FUNC0(magnitude_max)) ||
                        (FUNC0(magnitude) < FUNC0(magnitude_min)))
                    {
                        magnitude_avg = magnitude_avg + magnitude;
                    }
                    if ((FUNC0(phase) < FUNC0(phase_max)) ||
                        (FUNC0(phase) < FUNC0(phase_min)))
                    {
                        phase_avg = phase_avg + phase;
                    }
                }
                magnitude_avg = magnitude_avg / (nmeasurement - 1);
                phase_avg = phase_avg / (nmeasurement - 1);

                /* detect magnitude outlier */
                if (FUNC0(magnitude_max - magnitude_min) > MAX_MAG_DELTA) {
                    if (FUNC0(magnitude_max - magnitude_avg) >
                        FUNC0(magnitude_min - magnitude_avg))
                    {
                        /* max is outlier, force to avg */
                        outlier_mag_idx = magnitude_max_idx;
                    } else {
                        /* min is outlier, force to avg */
                        outlier_mag_idx = magnitude_min_idx;
                    }
                    coeff->mag_coeff[ch_idx][outlier_mag_idx][0] = magnitude_avg;
                    coeff->phs_coeff[ch_idx][outlier_mag_idx][0] = phase_avg;
                    FUNC5(ah, HAL_DEBUG_CALIBRATE, 
                        "[ch%d][outlier mag gain%d]:: "
                        "mag_avg = %d (/128), phase_avg = %d (/256)\n",
                        ch_idx, outlier_mag_idx, magnitude_avg, phase_avg);
                }
                /* detect phase outlier */
                if (FUNC0(phase_max - phase_min) > MAX_PHS_DELTA) {
                    if (FUNC0(phase_max-phase_avg) > FUNC0(phase_min - phase_avg)) {
                        /* max is outlier, force to avg */
                        outlier_phs_idx = phase_max_idx;
                    } else{
                        /* min is outlier, force to avg */
                        outlier_phs_idx = phase_min_idx;
                    }
                    coeff->mag_coeff[ch_idx][outlier_phs_idx][0] = magnitude_avg;
                    coeff->phs_coeff[ch_idx][outlier_phs_idx][0] = phase_avg;
                    FUNC5(ah, HAL_DEBUG_CALIBRATE, 
                        "[ch%d][outlier phs gain%d]:: " 
                        "mag_avg = %d (/128), phase_avg = %d (/256)\n",
                        ch_idx, outlier_phs_idx, magnitude_avg, phase_avg);
                }
            }
        }

        /*printf("------------ after outlier detection -------------\n");*/
        for (im = 0; im < nmeasurement; im++) {
            magnitude = coeff->mag_coeff[ch_idx][im][0];
            phase = coeff->phs_coeff[ch_idx][im][0];

            #if 0
            printf("[ch%d][gain%d]:: mag = %d (/128), phase = %d (/256)\n",
                ch_idx, im, magnitude, phase);
            #endif

            coeff->iqc_coeff[0] = (phase & 0x7f) | ((magnitude & 0x7f) << 7);

            if ((im % 2) == 0) {
                FUNC7(ah,
                    tx_corr_coeff[im][ch_idx],
                    AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE,
                    coeff->iqc_coeff[0]);
            } else {
                FUNC7(ah,
                    tx_corr_coeff[im][ch_idx],
                    AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE,
                    coeff->iqc_coeff[0]);
            }
#if ATH_SUPPORT_CAL_REUSE
            ichan->tx_corr_coeff[im][ch_idx] = coeff->iqc_coeff[0];
#endif
        }
#if ATH_SUPPORT_CAL_REUSE
        ichan->num_measures[ch_idx] = nmeasurement;
#endif
    }

    FUNC7(ah, AR_PHY_TX_IQCAL_CONTROL_3,
                     AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, 0x1);
    FUNC7(ah, AR_PHY_RX_IQCAL_CORR_B0,
                     AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, 0x1);

#if ATH_SUPPORT_CAL_REUSE
    if (is_cal_reusable) {
        ichan->one_time_txiqcal_done = AH_TRUE;
        HALDEBUG(ah, HAL_DEBUG_FCS_RTT,
            "(FCS) TXIQCAL saved - %d\n", ichan->channel);
    }
#endif
}