
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
struct ath_rx_status {int dummy; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
typedef int HAL_STATUS ;


 int HAL_ENOTSUPP ;

HAL_STATUS
ar9300_proc_rx_desc(struct ath_hal *ah, struct ath_desc *ds,
    u_int32_t pa, struct ath_desc *nds, u_int64_t tsf,
    struct ath_rx_status *rxs)
{
    return HAL_ENOTSUPP;
}
