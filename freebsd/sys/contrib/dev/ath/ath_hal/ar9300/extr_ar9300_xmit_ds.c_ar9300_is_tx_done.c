
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {size_t ts_tail; struct ar9300_txs* ts_ring; } ;
struct ath_hal {int dummy; } ;
struct ar9300_txs {int status8; } ;
typedef int HAL_STATUS ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_tx_done ;
 int HAL_EINPROGRESS ;
 int HAL_OK ;

HAL_STATUS
ar9300_is_tx_done(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    struct ar9300_txs *ads;

    ads = &ahp->ts_ring[ahp->ts_tail];

    if (ads->status8 & AR_tx_done) {
        return HAL_OK;
    }
    return HAL_EINPROGRESS;
}
