
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ len; scalar_t__ data; struct TYPE_6__* parent; int parent_index; } ;
typedef TYPE_1__ ldns_radix_node_t ;


 int assert (int) ;
 TYPE_1__* ldns_radix_prev_from_index (TYPE_1__*,int ) ;

ldns_radix_node_t*
ldns_radix_prev(ldns_radix_node_t* node)
{
 if (!node) {
  return ((void*)0);
 }


 while (node->parent) {
  uint8_t index = node->parent_index;
  ldns_radix_node_t* prev;
  node = node->parent;
  assert(node->len > 0);
  prev = ldns_radix_prev_from_index(node, index);
  if (prev) {
   return prev;
  }
  if (node->data) {
   return node;
  }
 }
 return ((void*)0);
}
