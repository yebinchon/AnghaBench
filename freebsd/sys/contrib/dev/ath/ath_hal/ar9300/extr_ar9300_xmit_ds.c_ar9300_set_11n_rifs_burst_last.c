
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ar9300_txc {int ds_ctl12; } ;


 struct ar9300_txc* AR9300TXC (void*) ;
 int AR_more_aggr ;
 int AR_more_rifs ;

void
ar9300_set_11n_rifs_burst_last(struct ath_hal *ah, void *ds)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    ads->ds_ctl12 &= (~AR_more_aggr & ~AR_more_rifs);
}
