
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int ar9300_stop_dma_receive (struct ath_hal*,int) ;

HAL_BOOL
ar9300_stop_dma_receive_freebsd(struct ath_hal *ah)
{

 return ar9300_stop_dma_receive(ah, 1000);
}
