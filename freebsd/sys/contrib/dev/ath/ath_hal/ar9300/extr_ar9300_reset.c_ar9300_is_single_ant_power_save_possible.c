
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct ath_hal {int dummy; } ;


 int AH_TRUE ;

u_int16_t
ar9300_is_single_ant_power_save_possible(struct ath_hal *ah)
{
    return AH_TRUE;
}
