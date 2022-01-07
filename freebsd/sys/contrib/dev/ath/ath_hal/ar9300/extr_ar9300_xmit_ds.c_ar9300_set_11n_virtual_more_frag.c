
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar9300_txc {int ds_ctl11; } ;


 struct ar9300_txc* AR9300TXC (struct ath_desc*) ;
 int AR_virt_more_frag ;

void
ar9300_set_11n_virtual_more_frag(struct ath_hal *ah, struct ath_desc *ds,
                                                  u_int vmf)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    if (vmf) {
        ads->ds_ctl11 |= AR_virt_more_frag;
    } else {
        ads->ds_ctl11 &= ~AR_virt_more_frag;
    }
}
