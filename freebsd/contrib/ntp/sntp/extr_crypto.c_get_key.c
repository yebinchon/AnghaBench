
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int key_id; struct key* next; } ;


 scalar_t__ key_cnt ;
 struct key* key_ptr ;

void
get_key(
 int key_id,
 struct key **d_key
 )
{
 struct key *itr_key;

 if (key_cnt == 0)
  return;
 for (itr_key = key_ptr; itr_key; itr_key = itr_key->next) {
  if (itr_key->key_id == key_id) {
   *d_key = itr_key;
   break;
  }
 }
 return;
}
