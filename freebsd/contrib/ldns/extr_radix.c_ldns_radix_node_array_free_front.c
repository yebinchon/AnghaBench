
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_9__ {size_t len; TYPE_3__* array; scalar_t__ offset; } ;
typedef TYPE_2__ ldns_radix_node_t ;
typedef int ldns_radix_array_t ;
struct TYPE_10__ {TYPE_1__* edge; } ;
struct TYPE_8__ {size_t parent_index; } ;


 int assert (int) ;
 int ldns_radix_array_reduce (TYPE_2__*) ;
 int ldns_radix_node_array_free (TYPE_2__*) ;
 int memmove (TYPE_3__*,TYPE_3__*,size_t) ;

__attribute__((used)) static void
ldns_radix_node_array_free_front(ldns_radix_node_t* node)
{
 uint16_t i, n = 0;

    while (n < node->len && node->array[n].edge == ((void*)0)) {
  n++;
 }
 if (n == 0) {
  return;
 }
 if (n == node->len) {
  ldns_radix_node_array_free(node);
  return;
 }
 assert(n < node->len);
 assert((int) n <= (255 - (int) node->offset));
 memmove(&node->array[0], &node->array[n],
  (node->len - n)*sizeof(ldns_radix_array_t));
 node->offset += n;
 node->len -= n;
 for (i=0; i < node->len; i++) {
  if (node->array[i].edge) {
   node->array[i].edge->parent_index = i;
  }
 }
 ldns_radix_array_reduce(node);
 return;
}
