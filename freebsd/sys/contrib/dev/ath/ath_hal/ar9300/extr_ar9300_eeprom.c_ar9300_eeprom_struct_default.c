
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ar9300_eeprom_t ;


 int ARRAY_LENGTH (int **) ;
 int ** default9300 ;

ar9300_eeprom_t *
ar9300_eeprom_struct_default(int default_index)
{
    if (default_index >= 0 &&
        default_index < ARRAY_LENGTH(default9300))
    {
        return default9300[default_index];
    } else {
        return 0;
    }
}
