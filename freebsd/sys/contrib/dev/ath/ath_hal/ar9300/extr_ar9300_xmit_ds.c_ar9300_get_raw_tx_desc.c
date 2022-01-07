
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_9300 {size_t ts_tail; struct ar9300_txs* ts_ring; } ;
struct ath_hal {int dummy; } ;
struct ar9300_txs {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int OS_MEMCPY (int *,struct ar9300_txs*,int) ;

void
ar9300_get_raw_tx_desc(struct ath_hal *ah, u_int32_t *txstatus)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    struct ar9300_txs *ads;

    ads = &ahp->ts_ring[ahp->ts_tail];

    OS_MEMCPY(txstatus, ads, sizeof(struct ar9300_txs));
}
