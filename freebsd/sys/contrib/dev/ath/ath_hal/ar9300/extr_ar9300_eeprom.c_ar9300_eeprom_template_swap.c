
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ar9300_eeprom_t ;


 int ARRAY_LENGTH (int ) ;
 int * ar9300_eeprom_struct_default (int) ;
 int ar9300_swap_eeprom (int *) ;
 int default9300 ;

void ar9300_eeprom_template_swap(void)
{
    int it;
    ar9300_eeprom_t *dptr;

    for (it = 0; it < ARRAY_LENGTH(default9300); it++) {
        dptr = ar9300_eeprom_struct_default(it);
        if (dptr != 0) {
            ar9300_swap_eeprom(dptr);
        }
    }
}
