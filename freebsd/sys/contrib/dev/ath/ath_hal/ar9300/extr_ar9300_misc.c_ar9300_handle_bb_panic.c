
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_bb_panic_last_status; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;
 int AR_PHY_BB_WD_STATUS_CLR ;
 int AR_PHY_PANIC_WD_STATUS ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar9300_handle_bb_panic(struct ath_hal *ah)
{
    u_int32_t status;




    AH9300(ah)->ah_bb_panic_last_status = status =
        OS_REG_READ(ah, AR_PHY_PANIC_WD_STATUS);




    OS_REG_WRITE(ah, AR_PHY_PANIC_WD_STATUS, status & ~AR_PHY_BB_WD_STATUS_CLR);
}
