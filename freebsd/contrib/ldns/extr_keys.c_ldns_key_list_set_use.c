
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_key_list ;


 int ldns_key_list_key (int *,size_t) ;
 size_t ldns_key_list_key_count (int *) ;
 int ldns_key_set_use (int ,int) ;

void
ldns_key_list_set_use(ldns_key_list *keys, bool v)
{
 size_t i;

 for (i = 0; i < ldns_key_list_key_count(keys); i++) {
  ldns_key_set_use(ldns_key_list_key(keys, i), v);
 }
}
