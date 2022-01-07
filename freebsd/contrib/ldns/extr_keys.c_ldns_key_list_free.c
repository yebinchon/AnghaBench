
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* _keys; } ;
typedef TYPE_1__ ldns_key_list ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_key_deep_free (int ) ;
 int ldns_key_list_key (TYPE_1__*,size_t) ;
 size_t ldns_key_list_key_count (TYPE_1__*) ;

void
ldns_key_list_free(ldns_key_list *key_list)
{
 size_t i;
 for (i = 0; i < ldns_key_list_key_count(key_list); i++) {
  ldns_key_deep_free(ldns_key_list_key(key_list, i));
 }
 LDNS_FREE(key_list->_keys);
 LDNS_FREE(key_list);
}
