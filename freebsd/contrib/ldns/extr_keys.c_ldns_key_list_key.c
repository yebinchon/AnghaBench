
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** _keys; } ;
typedef TYPE_1__ ldns_key_list ;
typedef int ldns_key ;


 size_t ldns_key_list_key_count (TYPE_1__ const*) ;

ldns_key *
ldns_key_list_key(const ldns_key_list *key, size_t nr)
{
 if (nr < ldns_key_list_key_count(key)) {
  return key->_keys[nr];
 } else {
  return ((void*)0);
 }
}
