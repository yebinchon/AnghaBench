
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t radix_strlen_t ;
struct TYPE_7__ {TYPE_3__* root; } ;
typedef TYPE_2__ ldns_radix_t ;
struct TYPE_8__ {size_t offset; size_t len; TYPE_1__* array; scalar_t__ data; } ;
typedef TYPE_3__ ldns_radix_node_t ;
struct TYPE_6__ {scalar_t__ len; TYPE_3__* edge; int str; } ;


 scalar_t__ memcmp (size_t const*,int ,size_t) ;

ldns_radix_node_t*
ldns_radix_search(ldns_radix_t* tree, const uint8_t* key, radix_strlen_t len)
{
 ldns_radix_node_t* node = ((void*)0);
 radix_strlen_t pos = 0;
 uint8_t byte = 0;

 if (!tree || !key) {
  return ((void*)0);
 }
 node = tree->root;
 while (node) {
  if (pos == len) {
   return node->data?node:((void*)0);
  }
  byte = key[pos];
  if (byte < node->offset) {
   return ((void*)0);
  }
  byte -= node->offset;
  if (byte >= node->len) {
   return ((void*)0);
  }
  pos++;
  if (node->array[byte].len > 0) {

   if (pos + node->array[byte].len > len) {
    return ((void*)0);
   }
   if (memcmp(&key[pos], node->array[byte].str,
    node->array[byte].len) != 0) {
    return ((void*)0);
   }
   pos += node->array[byte].len;
  }
  node = node->array[byte].edge;
 }
 return ((void*)0);
}
