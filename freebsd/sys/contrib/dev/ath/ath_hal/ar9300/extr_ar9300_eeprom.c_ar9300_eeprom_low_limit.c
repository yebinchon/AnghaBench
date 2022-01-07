
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int low_limit ;

int
ar9300_eeprom_low_limit(struct ath_hal *ah)
{
    return low_limit;
}
