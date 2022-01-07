
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
typedef scalar_t__ int16_t ;
struct TYPE_3__ {scalar_t__** nf_cal_buffer; } ;
typedef TYPE_1__ HAL_NFCAL_HIST_FULL ;


 int HALDEBUG (struct ath_hal*,int ,char*,int,int,int) ;
 int HAL_DEBUG_NFCAL ;
 int HAL_NF_CAL_HIST_LEN_FULL ;

__attribute__((used)) static int16_t
ar9300_get_nf_hist_mid(struct ath_hal *ah, HAL_NFCAL_HIST_FULL *h, int reading,
    int hist_len)
{
    int16_t nfval;
    int16_t sort[HAL_NF_CAL_HIST_LEN_FULL];
    int i, j;


    for (i = 0; i < hist_len; i++) {
        sort[i] = h->nf_cal_buffer[i][reading];
        HALDEBUG(ah, HAL_DEBUG_NFCAL,
            "nf_cal_buffer[%d][%d] = %d\n", i, reading, (int)sort[i]);
    }
    for (i = 0; i < hist_len - 1; i++) {
        for (j = 1; j < hist_len - i; j++) {
            if (sort[j] > sort[j - 1]) {
                nfval = sort[j];
                sort[j] = sort[j - 1];
                sort[j - 1] = nfval;
            }
        }
    }
    nfval = sort[(hist_len - 1) >> 1];

    return nfval;
}
