
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_LOC_CTL_REG ;
 int AR_LOC_CTL_REG_FS ;
 int AR_LOC_TIMER_REG ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void ar9300_update_loc_ctl_reg(struct ath_hal *ah, int pos_bit)
{
    u_int32_t reg_val;
    reg_val = OS_REG_READ(ah, AR_LOC_CTL_REG);
    if (pos_bit) {
        if (!(reg_val & AR_LOC_CTL_REG_FS)) {

            OS_REG_WRITE(ah, AR_LOC_CTL_REG, (reg_val | AR_LOC_CTL_REG_FS));
            OS_REG_WRITE(ah, AR_LOC_TIMER_REG, 0);
        }
    }
    else {
        OS_REG_WRITE(ah, AR_LOC_CTL_REG, (reg_val & ~AR_LOC_CTL_REG_FS));
    }
}
