
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_9300 {int ah_intr_txqs; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_NULL ;
 int HALDEBUG (int ,int ,char*) ;
 int HAL_DEBUG_UNMASKABLE ;

void
ar9300_get_tx_intr_queue(struct ath_hal *ah, u_int32_t *txqs)
{
    HALDEBUG(AH_NULL, HAL_DEBUG_UNMASKABLE,
                 "ar9300_get_tx_intr_queue: Should not be called\n");





}
