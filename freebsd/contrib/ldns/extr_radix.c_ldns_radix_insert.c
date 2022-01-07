
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int radix_strlen_t ;
typedef int ldns_status ;
struct TYPE_12__ {int count; TYPE_2__* root; } ;
typedef TYPE_1__ ldns_radix_t ;
struct TYPE_13__ {scalar_t__ len; scalar_t__* key; int klen; scalar_t__ offset; struct TYPE_13__* array; struct TYPE_13__* edge; scalar_t__ parent_index; struct TYPE_13__* parent; void* data; int str; } ;
typedef TYPE_2__ ldns_radix_node_t ;


 int LDNS_FREE (TYPE_2__*) ;
 int LDNS_STATUS_EXISTS_ERR ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_NULL ;
 int LDNS_STATUS_OK ;
 int assert (int) ;
 int ldns_radix_array_space (TYPE_2__*,scalar_t__) ;
 int ldns_radix_array_split (TYPE_2__*,scalar_t__*,int,int,TYPE_2__*) ;
 int ldns_radix_find_prefix (TYPE_1__*,scalar_t__*,int,TYPE_2__**,int*) ;
 TYPE_2__* ldns_radix_new_node (void*,scalar_t__*,int) ;
 int ldns_radix_prefix_remainder (int,scalar_t__*,int,int *,scalar_t__*) ;
 int ldns_radix_str_create (TYPE_2__*,scalar_t__*,int,int) ;

ldns_status
ldns_radix_insert(ldns_radix_t* tree, uint8_t* key, radix_strlen_t len,
 void* data)
{
 radix_strlen_t pos = 0;
 ldns_radix_node_t* add = ((void*)0);
 ldns_radix_node_t* prefix = ((void*)0);

 if (!tree || !key || !data) {
  return LDNS_STATUS_NULL;
 }
 add = ldns_radix_new_node(data, key, len);
 if (!add) {
  return LDNS_STATUS_MEM_ERR;
 }

 if (!ldns_radix_find_prefix(tree, key, len, &prefix, &pos)) {

  assert(tree->root == ((void*)0));
  if (len == 0) {




   tree->root = add;
  } else {




   prefix = ldns_radix_new_node(((void*)0), (uint8_t*)"", 0);
   if (!prefix) {
    LDNS_FREE(add);
    return LDNS_STATUS_MEM_ERR;
   }

   if (!ldns_radix_array_space(prefix, key[0])) {
    LDNS_FREE(add);
    LDNS_FREE(prefix->array);
    LDNS_FREE(prefix);
    return LDNS_STATUS_MEM_ERR;
   }

   add->parent = prefix;
   add->parent_index = 0;
   prefix->array[0].edge = add;
   if (len > 1) {

    if (!ldns_radix_prefix_remainder(1, key,
     len, &prefix->array[0].str,
     &prefix->array[0].len)) {
     LDNS_FREE(add);
     LDNS_FREE(prefix->array);
     LDNS_FREE(prefix);
     return LDNS_STATUS_MEM_ERR;
    }
   }
   tree->root = prefix;
  }
 } else if (pos == len) {

  if (prefix->data) {

   LDNS_FREE(add);
   return LDNS_STATUS_EXISTS_ERR;
  }
  prefix->data = data;
  prefix->key = key;
  prefix->klen = len;
 } else {

  uint8_t byte = key[pos];
  assert(pos < len);
  if (byte < prefix->offset ||
   (byte - prefix->offset) >= prefix->len) {







   if (!ldns_radix_array_space(prefix, byte)) {
    LDNS_FREE(add);
    return LDNS_STATUS_MEM_ERR;
   }
   assert(byte >= prefix->offset);
   assert((byte - prefix->offset) <= prefix->len);
   byte -= prefix->offset;
   if (pos+1 < len) {

    if (!ldns_radix_str_create(
     &prefix->array[byte], key, pos+1,
     len)) {
     LDNS_FREE(add);
     return LDNS_STATUS_MEM_ERR;
    }
   }

   add->parent = prefix;
   add->parent_index = byte;
   prefix->array[byte].edge = add;
  } else if (prefix->array[byte-prefix->offset].edge == ((void*)0)) {
   byte -= prefix->offset;
   if (pos+1 < len) {

    if (!ldns_radix_str_create(
     &prefix->array[byte], key, pos+1,
     len)) {
     LDNS_FREE(add);
     return LDNS_STATUS_MEM_ERR;
    }
   }

   add->parent = prefix;
   add->parent_index = byte;
   prefix->array[byte].edge = add;
  } else {




   if (!ldns_radix_array_split(&prefix->array[byte-(prefix->offset)],
    key, pos+1, len, add)) {
    LDNS_FREE(add);
    return LDNS_STATUS_MEM_ERR;
   }
  }
 }

 tree->count ++;
 return LDNS_STATUS_OK;
}
