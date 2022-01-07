
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int ar9300_stop_tx_dma (struct ath_hal*,int ,int) ;

HAL_BOOL
ar9300_stop_tx_dma_freebsd(struct ath_hal *ah, u_int q)
{

 return ar9300_stop_tx_dma(ah, q, 1000);
}
