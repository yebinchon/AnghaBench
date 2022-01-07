
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AH_KEY_REG_SIZE ;
 scalar_t__ AR_KEYTABLE_KEY0 (int) ;
 int OS_REG_READ (struct ath_hal*,scalar_t__) ;

void ar9300_dump_keycache(struct ath_hal *ah, int n, u_int32_t *entry)
{

    int i;

    for (i = 0; i < 8; i++) {
        entry[i] = OS_REG_READ(ah, AR_KEYTABLE_KEY0(n) + i * 4);
    }

}
