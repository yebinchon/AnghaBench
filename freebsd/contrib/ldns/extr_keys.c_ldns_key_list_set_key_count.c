
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t _key_count; } ;
typedef TYPE_1__ ldns_key_list ;



void
ldns_key_list_set_key_count(ldns_key_list *key, size_t count)
{
         key->_key_count = count;
}
