
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
typedef int int16_t ;
struct TYPE_9__ {int priv_nf; } ;
struct TYPE_8__ {TYPE_3__ base; } ;
struct TYPE_11__ {TYPE_2__ nf_cal_hist; } ;
struct TYPE_7__ {TYPE_3__ base; } ;
struct TYPE_10__ {TYPE_1__ nf_cal_hist; } ;
typedef TYPE_3__ HAL_NFCAL_BASE ;
typedef TYPE_4__ HAL_CHANNEL_INTERNAL ;


 TYPE_6__* AH_PRIVATE (struct ath_hal*) ;
 int OS_MEMCPY (int *,int ,int) ;

__attribute__((used)) static void
ar9300_get_nf_hist_base(struct ath_hal *ah, HAL_CHANNEL_INTERNAL *chan,
    int is_scan, int16_t nf[])
{
    HAL_NFCAL_BASE *h_base;




    if (is_scan) {
        h_base = &chan->nf_cal_hist.base;
    } else {

        h_base = &AH_PRIVATE(ah)->nf_cal_hist.base;
    }

    OS_MEMCPY(nf, h_base->priv_nf, sizeof(h_base->priv_nf));
}
