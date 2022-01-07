
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_8__ {size_t len; size_t parent_index; TYPE_1__* array; scalar_t__ data; struct TYPE_8__* parent; } ;
typedef TYPE_2__ ldns_radix_node_t ;
struct TYPE_7__ {TYPE_2__* edge; } ;


 TYPE_2__* ldns_radix_next_in_subtree (TYPE_2__*) ;

ldns_radix_node_t*
ldns_radix_next(ldns_radix_node_t* node)
{
 if (!node) {
  return ((void*)0);
 }
 if (node->len) {

  ldns_radix_node_t* next = ldns_radix_next_in_subtree(node);
  if (next) {
   return next;
  }
 }

 while (node->parent) {
  uint8_t index = node->parent_index;
  node = node->parent;
  index++;
  for (; index < node->len; index++) {
   if (node->array[index].edge) {
    ldns_radix_node_t* next;

    if (node->array[index].edge->data) {
     return node->array[index].edge;
    }

    next = ldns_radix_next_in_subtree(node);
    if (next) {
     return next;
    }
   }
  }
 }
 return ((void*)0);
}
