
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ath_rx_status {int dummy; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
typedef int HAL_STATUS ;


 int ar9300_proc_rx_desc_fast (struct ath_hal*,struct ath_desc*,int ,struct ath_desc*,struct ath_rx_status*,void*) ;

HAL_STATUS
ar9300_proc_rx_desc_freebsd(struct ath_hal *ah, struct ath_desc *ds,
    uint32_t pa, struct ath_desc *ds_next, uint64_t tsf,
    struct ath_rx_status *rxs)
{

 return (ar9300_proc_rx_desc_fast(ah, ds, 0, ds_next, rxs,
     (void *) ds));
}
