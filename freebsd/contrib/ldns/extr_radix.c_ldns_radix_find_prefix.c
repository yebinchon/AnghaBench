
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
struct TYPE_8__ {size_t offset; size_t len; TYPE_1__* array; } ;
typedef TYPE_3__ ldns_radix_node_t ;
struct TYPE_6__ {scalar_t__ len; TYPE_3__* edge; int str; } ;


 scalar_t__ memcmp (size_t*,int ,size_t) ;

__attribute__((used)) static int
ldns_radix_find_prefix(ldns_radix_t* tree, uint8_t* key,
 radix_strlen_t len, ldns_radix_node_t** result, radix_strlen_t* respos)
{

 ldns_radix_node_t* n = tree->root;
 radix_strlen_t pos = 0;
 uint8_t byte;
 *respos = 0;
 *result = n;
        if (!n) {

  return 0;
 }

 while (n) {
  if (pos == len) {

   return 1;
  }
  byte = key[pos];
  if (byte < n->offset) {

   return 1;
  }
  byte -= n->offset;
  if (byte >= n->len) {

   return 1;
  }

  pos++;
  if (n->array[byte].len != 0) {

   if (pos + n->array[byte].len > len) {
    return 1;
   }
   if (memcmp(&key[pos], n->array[byte].str,
    n->array[byte].len) != 0) {
    return 1;
   }
   pos += n->array[byte].len;
  }

  n = n->array[byte].edge;
  if (!n) {
   return 1;
  }

  *respos = pos;
  *result = n;
 }

 return 1;
}
