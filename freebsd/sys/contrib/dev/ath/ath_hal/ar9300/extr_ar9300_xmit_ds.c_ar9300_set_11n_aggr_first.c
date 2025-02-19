
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar9300_txc {int ds_ctl12; int ds_ctl17; } ;


 struct ar9300_txc* AR9300TXC (struct ath_desc*) ;
 int AR_aggr_len ;
 int AR_is_aggr ;
 int AR_more_aggr ;
 int AR_pad_delim ;
 int SM (int ,int ) ;

void
ar9300_set_11n_aggr_first(struct ath_hal *ah, struct ath_desc *ds,
  u_int aggr_len, u_int num_delims)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    ads->ds_ctl12 |= (AR_is_aggr | AR_more_aggr);

    ads->ds_ctl17 &= ~AR_aggr_len;
    ads->ds_ctl17 &= ~AR_pad_delim;

    ads->ds_ctl17 |= SM(aggr_len, AR_aggr_len);
    ads->ds_ctl17 |= SM(num_delims, AR_pad_delim);
}
