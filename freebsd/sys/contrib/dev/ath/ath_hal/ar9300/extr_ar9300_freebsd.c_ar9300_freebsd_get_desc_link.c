
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct ar9300_txc {int ds_link; } ;


 struct ar9300_txc* AR9300TXC (void*) ;

void
ar9300_freebsd_get_desc_link(struct ath_hal *ah, void *ds, uint32_t *link)
{
 struct ar9300_txc *ads = AR9300TXC(ds);

 (*link) = ads->ds_link;
}
