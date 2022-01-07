
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar9300_txc {int ds_ctl13; } ;


 struct ar9300_txc* AR9300TXC (struct ath_desc*) ;
 int AR_burst_dur ;
 int SM (int ,int ) ;

void
ar9300_set_11n_burst_duration(struct ath_hal *ah, struct ath_desc *ds,
    u_int burst_duration)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    ads->ds_ctl13 &= ~AR_burst_dur;
    ads->ds_ctl13 |= SM(burst_duration, AR_burst_dur);
}
