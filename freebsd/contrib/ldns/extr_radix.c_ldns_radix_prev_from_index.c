
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_8__ {TYPE_1__* array; } ;
typedef TYPE_2__ ldns_radix_node_t ;
struct TYPE_7__ {scalar_t__ edge; } ;


 TYPE_2__* ldns_radix_last_in_subtree_incl_self (TYPE_2__*) ;

__attribute__((used)) static ldns_radix_node_t*
ldns_radix_prev_from_index(ldns_radix_node_t* node, uint8_t index)
{
 uint8_t i = index;
 while (i > 0) {
  i--;
  if (node->array[i].edge) {
   ldns_radix_node_t* prev =
    ldns_radix_last_in_subtree_incl_self(node);
   if (prev) {
    return prev;
   }
  }
 }
 return ((void*)0);
}
