
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_radix_node_t ;


 TYPE_1__* ldns_radix_last_in_subtree (TYPE_1__*) ;

__attribute__((used)) static ldns_radix_node_t*
ldns_radix_last_in_subtree_incl_self(ldns_radix_node_t* node)
{
 ldns_radix_node_t* last = ldns_radix_last_in_subtree(node);
 if (last) {
  return last;
 } else if (node->data) {
  return node;
 }
 return ((void*)0);
}
