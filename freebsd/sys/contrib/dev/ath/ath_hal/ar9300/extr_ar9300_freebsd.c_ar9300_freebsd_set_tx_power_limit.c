
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int ar9300_set_tx_power_limit (struct ath_hal*,int ,int ,int ) ;

__attribute__((used)) static HAL_BOOL
ar9300_freebsd_set_tx_power_limit(struct ath_hal *ah, uint32_t limit)
{
 return (ar9300_set_tx_power_limit(ah, limit, 0, 0));
}
