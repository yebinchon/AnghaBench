
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
struct ar9300_txc {int ds_ctl12; } ;


 struct ar9300_txc* AR9300TXC (void*) ;
 int AR_paprd_chain_mask ;
 int SM (int,int ) ;

void
ar9300_set_paprd_tx_desc(struct ath_hal *ah, void *ds, int chain_num)
{
    struct ar9300_txc *ads = AR9300TXC(ds);

    ads->ds_ctl12 |= SM((1 << chain_num), AR_paprd_chain_mask);
}
