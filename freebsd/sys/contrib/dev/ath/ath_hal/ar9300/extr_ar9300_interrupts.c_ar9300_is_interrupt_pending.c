
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int AR9300_INTR_SYNC_DEFAULT ;
 int AR9300_INTR_SYNC_DEF_NO_HOST1_PERR ;
 int AR9340_INTR_SYNC_DEFAULT ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_INTR_ASYNC_CAUSE ;
 int AR_INTR_ASYNC_USED ;
 int AR_INTR_SPURIOUS ;
 int AR_INTR_SYNC_CAUSE ;
 int AR_INTR_SYNC_MASK_GPIO ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ AR_SREV_WASP (struct ath_hal*) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar9300_is_interrupt_pending(struct ath_hal *ah)
{
    u_int32_t sync_en_def = AR9300_INTR_SYNC_DEFAULT;
    u_int32_t host_isr;





    host_isr = OS_REG_READ(ah, AR_HOSTIF_REG(ah, AR_INTR_ASYNC_CAUSE));
    if ((host_isr & AR_INTR_ASYNC_USED) && (host_isr != AR_INTR_SPURIOUS)) {
        return AH_TRUE;
    }

    host_isr = OS_REG_READ(ah, AR_HOSTIF_REG(ah, AR_INTR_SYNC_CAUSE));
    if (AR_SREV_POSEIDON(ah)) {
        sync_en_def = AR9300_INTR_SYNC_DEF_NO_HOST1_PERR;
    }
    else if (AR_SREV_WASP(ah)) {
        sync_en_def = AR9340_INTR_SYNC_DEFAULT;
    }

    if ((host_isr & (sync_en_def | AR_INTR_SYNC_MASK_GPIO)) &&
        (host_isr != AR_INTR_SPURIOUS)) {
        return AH_TRUE;
    }

    return AH_FALSE;
}
