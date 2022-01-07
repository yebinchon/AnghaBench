
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_tx_status {int ts_finaltsi; void* ts_rate; } ;
struct ath_hal {int dummy; } ;
struct ar9300_txc {int ds_ctl14; } ;


 struct ar9300_txc* AR9300TXC (void*) ;
 int AR_xmit_rate0 ;
 int AR_xmit_rate1 ;
 int AR_xmit_rate2 ;
 int AR_xmit_rate3 ;
 void* MS (int ,int ) ;
 int ar9300_set_selfgenrate_limit (struct ath_hal*,void*) ;

void
ar9300_get_tx_rate_code(struct ath_hal *ah, void *ds, struct ath_tx_status *ts)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    switch (ts->ts_finaltsi) {
    case 0:
        ts->ts_rate = MS(ads->ds_ctl14, AR_xmit_rate0);
        break;
    case 1:
        ts->ts_rate = MS(ads->ds_ctl14, AR_xmit_rate1);
        break;
    case 2:
        ts->ts_rate = MS(ads->ds_ctl14, AR_xmit_rate2);
        break;
    case 3:
        ts->ts_rate = MS(ads->ds_ctl14, AR_xmit_rate3);
        break;
    }

    ar9300_set_selfgenrate_limit(ah, ts->ts_rate);
}
