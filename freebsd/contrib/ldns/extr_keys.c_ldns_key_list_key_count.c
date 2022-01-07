
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t _key_count; } ;
typedef TYPE_1__ ldns_key_list ;



size_t
ldns_key_list_key_count(const ldns_key_list *key_list)
{
         return key_list->_key_count;
}
