
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PCU_ALWAYS_PERFORM_KEYSEARCH ;
 int AR_PCU_MISC ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar9300_enable_keysearch_always(struct ath_hal *ah, int enable)
{
    u_int32_t val;

    if (!ah) {
        return;
    }
    val = OS_REG_READ(ah, AR_PCU_MISC);
    if (enable) {
        val |= AR_PCU_ALWAYS_PERFORM_KEYSEARCH;
    } else {
        val &= ~AR_PCU_ALWAYS_PERFORM_KEYSEARCH;
    }
    OS_REG_WRITE(ah, AR_PCU_MISC, val);
}
