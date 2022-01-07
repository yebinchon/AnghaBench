
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_LOC_TIMER_REG ;
 int OS_REG_READ (struct ath_hal*,int ) ;

__attribute__((used)) static u_int32_t
ar9300_read_loc_timer(struct ath_hal *ah)
{

    return OS_REG_READ(ah, AR_LOC_TIMER_REG);
}
