
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int radix_strlen_t ;
typedef scalar_t__ ldns_status ;
struct TYPE_12__ {int root; } ;
typedef TYPE_1__ ldns_radix_t ;
struct TYPE_13__ {int klen; int * key; scalar_t__ data; } ;
typedef TYPE_2__ ldns_radix_node_t ;


 scalar_t__ LDNS_STATUS_EXISTS_ERR ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_NO_DATA ;
 scalar_t__ LDNS_STATUS_NULL ;
 scalar_t__ LDNS_STATUS_OK ;
 TYPE_1__* ldns_radix_create () ;
 void* ldns_radix_delete (TYPE_1__*,int *,int ) ;
 TYPE_2__* ldns_radix_first (TYPE_1__*) ;
 scalar_t__ ldns_radix_insert (TYPE_1__*,int *,int ,void*) ;
 TYPE_2__* ldns_radix_next (TYPE_2__*) ;

ldns_status
ldns_radix_split(ldns_radix_t* tree1, size_t num, ldns_radix_t** tree2)
{
 size_t count = 0;
 ldns_radix_node_t* cur_node;
 ldns_status status = LDNS_STATUS_OK;
 if (!tree1 || !tree1->root || num == 0) {
  return LDNS_STATUS_OK;
 }
 if (!tree2) {
  return LDNS_STATUS_NULL;
 }
 if (!*tree2) {
  *tree2 = ldns_radix_create();
  if (!*tree2) {
   return LDNS_STATUS_MEM_ERR;
  }
 }
 cur_node = ldns_radix_first(tree1);
 while (count < num && cur_node) {
  if (cur_node->data) {

   uint8_t* cur_key = cur_node->key;
   radix_strlen_t cur_len = cur_node->klen;
   void* cur_data = ldns_radix_delete(tree1, cur_key,
    cur_len);

   if (!cur_data) {
    return LDNS_STATUS_NO_DATA;
   }
   status = ldns_radix_insert(*tree2, cur_key, cur_len,
    cur_data);
   if (status != LDNS_STATUS_OK &&
       status != LDNS_STATUS_EXISTS_ERR) {
    return status;
   }







   count++;
   cur_node = ldns_radix_first(tree1);
  } else {
   cur_node = ldns_radix_next(cur_node);
  }
 }
 return LDNS_STATUS_OK;
}
