
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_tx_status {int dummy; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
typedef int HAL_STATUS ;


 int ar9300_proc_tx_desc (struct ath_hal*,struct ath_tx_status*) ;

HAL_STATUS
ar9300_freebsd_proc_tx_desc(struct ath_hal *ah, struct ath_desc *ds,
    struct ath_tx_status *ts)
{

 return ar9300_proc_tx_desc(ah, ts);
}
