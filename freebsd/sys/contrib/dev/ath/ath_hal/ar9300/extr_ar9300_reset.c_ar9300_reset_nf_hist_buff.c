
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
typedef void* int16_t ;
struct TYPE_7__ {void** priv_nf; } ;
struct TYPE_8__ {TYPE_1__ base; void*** nf_cal_buffer; } ;
struct TYPE_11__ {TYPE_2__ nf_cal_hist; } ;
struct TYPE_9__ {int ** nf_cal_buffer; } ;
struct TYPE_10__ {TYPE_3__ nf_cal_hist; } ;
typedef TYPE_2__ HAL_NFCAL_HIST_FULL ;
typedef TYPE_3__ HAL_CHAN_NFCAL_HIST ;
typedef TYPE_4__ HAL_CHANNEL_INTERNAL ;


 TYPE_6__* AH_PRIVATE (struct ath_hal*) ;
 int HAL_NF_CAL_HIST_LEN_FULL ;
 int HAL_NUM_NF_READINGS ;
 void* ar9300_limit_nf_range (struct ath_hal*,int ) ;

__attribute__((used)) inline static void
ar9300_reset_nf_hist_buff(struct ath_hal *ah, HAL_CHANNEL_INTERNAL *ichan)
{
    HAL_CHAN_NFCAL_HIST *h = &ichan->nf_cal_hist;
    HAL_NFCAL_HIST_FULL *home = &AH_PRIVATE(ah)->nf_cal_hist;
    int i;
    for (i = 0; i < HAL_NUM_NF_READINGS; i ++) {
        int j;
        int16_t nf;





        nf = ar9300_limit_nf_range(ah, h->nf_cal_buffer[0][i]);
        for (j = 0; j < HAL_NF_CAL_HIST_LEN_FULL; j++) {
            home->nf_cal_buffer[j][i] = nf;
        }
        AH_PRIVATE(ah)->nf_cal_hist.base.priv_nf[i] = nf;
    }
}
