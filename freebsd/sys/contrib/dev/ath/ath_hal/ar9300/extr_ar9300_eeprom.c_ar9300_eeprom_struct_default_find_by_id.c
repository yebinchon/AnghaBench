
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int template_version; } ;
typedef TYPE_1__ ar9300_eeprom_t ;


 int ARRAY_LENGTH (TYPE_1__**) ;
 TYPE_1__** default9300 ;

ar9300_eeprom_t *
ar9300_eeprom_struct_default_find_by_id(int id)
{
    int it;

    for (it = 0; it < ARRAY_LENGTH(default9300); it++) {
        if (default9300[it] != 0 && default9300[it]->template_version == id) {
            return default9300[it];
        }
    }
    return 0;
}
