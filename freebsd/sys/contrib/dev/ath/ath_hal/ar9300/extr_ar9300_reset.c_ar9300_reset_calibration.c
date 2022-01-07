
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* sign; } ;
struct TYPE_10__ {scalar_t__* sign; } ;
struct TYPE_9__ {scalar_t__* sign; } ;
struct TYPE_8__ {scalar_t__* sign; } ;
struct ath_hal_9300 {scalar_t__ ah_cal_samples; TYPE_4__ ah_meas3; TYPE_3__ ah_meas2; TYPE_2__ ah_meas1; TYPE_1__ ah_meas0; } ;
struct ath_hal {int dummy; } ;
struct TYPE_12__ {int cal_state; } ;
typedef TYPE_5__ HAL_CAL_LIST ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR9300_MAX_CHAINS ;
 int CAL_RUNNING ;
 int ar9300_setup_calibration (struct ath_hal*,TYPE_5__*) ;

__attribute__((used)) inline static void
ar9300_reset_calibration(struct ath_hal *ah, HAL_CAL_LIST *curr_cal)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    int i;


    ar9300_setup_calibration(ah, curr_cal);


    curr_cal->cal_state = CAL_RUNNING;


    for (i = 0; i < AR9300_MAX_CHAINS; i++) {
        ahp->ah_meas0.sign[i] = 0;
        ahp->ah_meas1.sign[i] = 0;
        ahp->ah_meas2.sign[i] = 0;
        ahp->ah_meas3.sign[i] = 0;
    }

    ahp->ah_cal_samples = 0;
}
