
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_tx_chainmask; int * small_signal_gain; int ** pa_table; } ;
typedef int HAL_STATUS ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int HAL_EINPROGRESS ;
 int HAL_OK ;
 int NUM_BIN ;
 int OS_DELAY (int) ;
 int ar9300_create_pa_curve (struct ath_hal*,int *,int *,int*) ;
 scalar_t__ ar9300_paprd_retrain_pain (struct ath_hal*,int*) ;
 int ath_hal_printf (struct ath_hal*,char*,int) ;

HAL_STATUS ar9300_paprd_create_curve(struct ath_hal * ah,
  struct ieee80211_channel * chan, int chain_num)
{
    int status = 0;
    u_int32_t *pa_table, small_signal_gain;
    int pa_in[NUM_BIN + 1];

    if (AH9300(ah)->ah_tx_chainmask & (1 << chain_num)) {
        pa_table = &AH9300(ah)->pa_table[chain_num][0];

        status = ar9300_create_pa_curve(ah, &pa_table[0], &small_signal_gain,
                    &pa_in[0]);

  if (AR_SREV_WASP(ah)) {
   OS_DELAY(1000);
  }

        if (status != 0) {
            ath_hal_printf(ah, "ERROR:: paprd failed with error code = %d\n",
                status);
            return -1;
        }
        AH9300(ah)->small_signal_gain[chain_num] = small_signal_gain;

        if (AR_SREV_POSEIDON(ah) || AR_SREV_HORNET(ah)) {
            if (ar9300_paprd_retrain_pain(ah, pa_in)) {

                return HAL_EINPROGRESS;
      }
        }
    }
    return HAL_OK;
}
