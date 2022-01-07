
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar9300_txc {int ds_ctl12; } ;


 struct ar9300_txc* AR9300TXC (struct ath_desc*) ;
 int AR_is_aggr ;
 int AR_more_aggr ;

void
ar9300_clr_11n_aggr(struct ath_hal *ah, struct ath_desc *ds)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    ads->ds_ctl12 &= (~AR_is_aggr & ~AR_more_aggr);
}
