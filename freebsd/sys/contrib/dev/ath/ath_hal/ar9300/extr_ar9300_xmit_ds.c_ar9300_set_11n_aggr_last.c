
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar9300_txc {int ds_ctl17; int ds_ctl12; } ;


 struct ar9300_txc* AR9300TXC (struct ath_desc*) ;
 int AR_is_aggr ;
 int AR_more_aggr ;
 int AR_pad_delim ;

void
ar9300_set_11n_aggr_last(struct ath_hal *ah, struct ath_desc *ds)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    ads->ds_ctl12 |= AR_is_aggr;
    ads->ds_ctl12 &= ~AR_more_aggr;
    ads->ds_ctl17 &= ~AR_pad_delim;
}
