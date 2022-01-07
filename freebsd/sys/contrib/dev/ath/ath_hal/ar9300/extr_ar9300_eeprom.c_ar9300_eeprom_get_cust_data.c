
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal_9300 {int dummy; } ;



u_int8_t*
ar9300_eeprom_get_cust_data(struct ath_hal_9300 *ahp)
{
    return (u_int8_t *)ahp;
}
