
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TRUE ;

HAL_BOOL
ar9300_start_tx_dma(struct ath_hal *ah, u_int q)
{
    return AH_TRUE;
}
