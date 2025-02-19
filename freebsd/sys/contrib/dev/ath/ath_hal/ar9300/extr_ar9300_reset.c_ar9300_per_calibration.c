
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int8_t ;
struct ath_hal_9300 {scalar_t__ ah_cal_samples; } ;
struct ath_hal {int dummy; } ;
struct TYPE_10__ {scalar_t__ cal_state; TYPE_1__* cal_data; } ;
struct TYPE_9__ {int calValid; } ;
struct TYPE_8__ {scalar_t__ cal_num_samples; int cal_type; int (* cal_post_proc ) (struct ath_hal*,int) ;int (* cal_collect ) (struct ath_hal*,int) ;} ;
typedef TYPE_2__ HAL_CHANNEL_INTERNAL ;
typedef TYPE_3__ HAL_CAL_LIST ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 int AH_TRUE ;
 int AR9300_MAX_CHAINS ;
 int AR_PHY_TIMING4 ;
 int AR_PHY_TIMING4_DO_CAL ;
 scalar_t__ CAL_DONE ;
 scalar_t__ CAL_RUNNING ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int ar9300_reset_calibration (struct ath_hal*,TYPE_3__*) ;
 int ar9300_setup_calibration (struct ath_hal*,TYPE_3__*) ;
 int stub1 (struct ath_hal*,int) ;
 int stub2 (struct ath_hal*,int) ;

__attribute__((used)) inline static void
ar9300_per_calibration(struct ath_hal *ah, HAL_CHANNEL_INTERNAL *ichan,
    u_int8_t rxchainmask, HAL_CAL_LIST *curr_cal, HAL_BOOL *is_cal_done)
{
    struct ath_hal_9300 *ahp = AH9300(ah);


    *is_cal_done = AH_FALSE;


    if (curr_cal->cal_state == CAL_RUNNING) {

        if (!(OS_REG_READ(ah, AR_PHY_TIMING4) & AR_PHY_TIMING4_DO_CAL)) {
            int i, num_chains = 0;
            for (i = 0; i < AR9300_MAX_CHAINS; i++) {
                if (rxchainmask & (1 << i)) {
                    num_chains++;
                }
            }




            curr_cal->cal_data->cal_collect(ah, num_chains);

            ahp->ah_cal_samples++;

            if (ahp->ah_cal_samples >= curr_cal->cal_data->cal_num_samples) {



                curr_cal->cal_data->cal_post_proc(ah, num_chains);


                ichan->calValid |= curr_cal->cal_data->cal_type;
                curr_cal->cal_state = CAL_DONE;
                *is_cal_done = AH_TRUE;
            } else {



                ar9300_setup_calibration(ah, curr_cal);
            }
        }
    } else if (!(ichan->calValid & curr_cal->cal_data->cal_type)) {

        ar9300_reset_calibration(ah, curr_cal);
    }
}
