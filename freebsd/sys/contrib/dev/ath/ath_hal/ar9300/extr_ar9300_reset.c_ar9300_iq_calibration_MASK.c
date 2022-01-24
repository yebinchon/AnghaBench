#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct ath_hal_9300 {int* ah_total_power_meas_i; int* ah_total_power_meas_q; int* ah_total_iq_corr_meas; int* ah_rx_cal_corr; int /*<<< orphan*/  ah_rx_cal_complete; scalar_t__ ah_rx_cal_chan_flag; int /*<<< orphan*/  ah_rx_cal_chan; } ;
struct ath_hal {int dummy; } ;
typedef  int int32_t ;
struct TYPE_5__ {int /*<<< orphan*/  ah_curchan; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
typedef  TYPE_1__ HAL_CHANNEL_INTERNAL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 TYPE_3__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
#define  AR_PHY_RX_IQCAL_CORR_B0 130 
#define  AR_PHY_RX_IQCAL_CORR_B1 129 
#define  AR_PHY_RX_IQCAL_CORR_B2 128 
 int AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE ; 
 int AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF ; 
 int AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,char*,int const,...) ; 
 int /*<<< orphan*/  HAL_DEBUG_CALIBRATE ; 
 int FUNC3 (struct ath_hal*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int const,int) ; 
 TYPE_1__* FUNC6 (struct ath_hal*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct ath_hal *ah, u_int8_t num_chains)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    u_int32_t power_meas_q, power_meas_i, iq_corr_meas;
    u_int32_t q_coff_denom, i_coff_denom;
    int32_t q_coff, i_coff;
    int iq_corr_neg, i;
    HAL_CHANNEL_INTERNAL *ichan;
    static const u_int32_t offset_array[3] = {
        AR_PHY_RX_IQCAL_CORR_B0,
        AR_PHY_RX_IQCAL_CORR_B1,
        AR_PHY_RX_IQCAL_CORR_B2,
    };

    ichan = FUNC6(ah, FUNC1(ah)->ah_curchan);

    for (i = 0; i < num_chains; i++) {
        power_meas_i = ahp->ah_total_power_meas_i[i];
        power_meas_q = ahp->ah_total_power_meas_q[i];
        iq_corr_meas = ahp->ah_total_iq_corr_meas[i];

        FUNC2(ah, HAL_DEBUG_CALIBRATE,
            "Starting IQ Cal and Correction for Chain %d\n", i);
        FUNC2(ah, HAL_DEBUG_CALIBRATE,
            "Orignal: Chn %diq_corr_meas = 0x%08x\n",
            i, ahp->ah_total_iq_corr_meas[i]);

        iq_corr_neg = 0;

        /* iq_corr_meas is always negative. */
        if (iq_corr_meas > 0x80000000)  {
            iq_corr_meas = (0xffffffff - iq_corr_meas) + 1;
            iq_corr_neg = 1;
        }

        FUNC2(ah, HAL_DEBUG_CALIBRATE,
            "Chn %d pwr_meas_i = 0x%08x\n", i, power_meas_i);
        FUNC2(ah, HAL_DEBUG_CALIBRATE,
            "Chn %d pwr_meas_q = 0x%08x\n", i, power_meas_q);
        FUNC2(ah, HAL_DEBUG_CALIBRATE,
            "iq_corr_neg is 0x%08x\n", iq_corr_neg);

        i_coff_denom = (power_meas_i / 2 + power_meas_q / 2) / 256;
        q_coff_denom = power_meas_q / 64;

        /* Protect against divide-by-0 */
        if ((i_coff_denom != 0) && (q_coff_denom != 0)) {
            /* IQ corr_meas is already negated if iqcorr_neg == 1 */
            i_coff = iq_corr_meas / i_coff_denom;
            q_coff = power_meas_i / q_coff_denom - 64;
            FUNC2(ah, HAL_DEBUG_CALIBRATE,
                "Chn %d i_coff = 0x%08x\n", i, i_coff);
            FUNC2(ah, HAL_DEBUG_CALIBRATE,
                "Chn %d q_coff = 0x%08x\n", i, q_coff);

            /* Force bounds on i_coff */
            if (i_coff >= 63) {
                i_coff = 63;
            } else if (i_coff <= -63) {
                i_coff = -63;
            }

            /* Negate i_coff if iq_corr_neg == 0 */
            if (iq_corr_neg == 0x0) {
                i_coff = -i_coff;
            }

            /* Force bounds on q_coff */
            if (q_coff >= 63) {
                q_coff = 63;
            } else if (q_coff <= -63) {
                q_coff = -63;
            }

            i_coff = i_coff & 0x7f;
            q_coff = q_coff & 0x7f;

            FUNC2(ah, HAL_DEBUG_CALIBRATE,
                "Chn %d : i_coff = 0x%x  q_coff = 0x%x\n", i, i_coff, q_coff);
            FUNC2(ah, HAL_DEBUG_CALIBRATE,
                "Register offset (0x%04x) before update = 0x%x\n",
                offset_array[i], FUNC3(ah, offset_array[i]));

            FUNC4(ah, offset_array[i],
                AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF, i_coff);
            FUNC4(ah, offset_array[i],
                AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF, q_coff);

            /* store the RX cal results */
	    if (ichan != NULL) {
            ahp->ah_rx_cal_corr[i] = FUNC3(ah, offset_array[i]) & 0x7fff;
            ahp->ah_rx_cal_complete = AH_TRUE;
            ahp->ah_rx_cal_chan = ichan->channel;
//            ahp->ah_rx_cal_chan_flag = ichan->channel_flags &~ CHANNEL_PASSIVE; 
            ahp->ah_rx_cal_chan_flag = 0; /* XXX */
	    } else {
	        /* XXX? Is this what I should do? */
            	ahp->ah_rx_cal_complete = AH_FALSE;

	    }

            FUNC2(ah, HAL_DEBUG_CALIBRATE,
                "Register offset (0x%04x) QI COFF (bitfields 0x%08x) "
                "after update = 0x%x\n",
                offset_array[i], AR_PHY_RX_IQCAL_CORR_IQCORR_Q_I_COFF,
                FUNC3(ah, offset_array[i]));
            FUNC2(ah, HAL_DEBUG_CALIBRATE,
                "Register offset (0x%04x) QQ COFF (bitfields 0x%08x) "
                "after update = 0x%x\n",
                offset_array[i], AR_PHY_RX_IQCAL_CORR_IQCORR_Q_Q_COFF,
                FUNC3(ah, offset_array[i]));
            FUNC2(ah, HAL_DEBUG_CALIBRATE,
                "IQ Cal and Correction done for Chain %d\n", i);
        }
    }

    FUNC5(ah,
        AR_PHY_RX_IQCAL_CORR_B0, AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE);
    FUNC2(ah, HAL_DEBUG_CALIBRATE,
        "IQ Cal and Correction (offset 0x%04x) enabled "
        "(bit position 0x%08x). New Value 0x%08x\n",
        (unsigned) (AR_PHY_RX_IQCAL_CORR_B0),
        AR_PHY_RX_IQCAL_CORR_IQCORR_ENABLE,
        FUNC3(ah, AR_PHY_RX_IQCAL_CORR_B0));
}