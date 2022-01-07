
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct ar9300_txc {int ds_ctl10; int ds_link; } ;


 struct ar9300_txc* AR9300TXC (void*) ;
 int AR_tx_ptr_chk_sum ;
 int ar9300_calc_ptr_chk_sum (struct ar9300_txc*) ;

void
ar9300_set_desc_link(struct ath_hal *ah, void *ds, u_int32_t link)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    ads->ds_link = link;





    ads->ds_ctl10 &= ~AR_tx_ptr_chk_sum;
    ads->ds_ctl10 |= ar9300_calc_ptr_chk_sum(ads);
}
