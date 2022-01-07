
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_6__ {size_t len; TYPE_1__* array; scalar_t__ data; } ;
typedef TYPE_2__ ldns_radix_node_t ;
struct TYPE_5__ {TYPE_2__* edge; } ;



__attribute__((used)) static ldns_radix_node_t*
ldns_radix_next_in_subtree(ldns_radix_node_t* node)
{
 uint16_t i;
 ldns_radix_node_t* next;

 for (i = 0; i < node->len; i++) {
  if (node->array[i].edge) {

   if (node->array[i].edge->data) {
    return node->array[i].edge;
   }

   next = ldns_radix_next_in_subtree(node->array[i].edge);
   if (next) {
    return next;
   }
  }
 }
 return ((void*)0);
}
