
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* root; } ;
typedef TYPE_1__ ldns_radix_t ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_2__ ldns_radix_node_t ;


 TYPE_2__* ldns_radix_next (TYPE_2__*) ;

ldns_radix_node_t*
ldns_radix_first(const ldns_radix_t* tree)
{
 ldns_radix_node_t* first = ((void*)0);
 if (!tree || !tree->root) {
  return ((void*)0);
 }
 first = tree->root;
 if (first->data) {
  return first;
 }
 return ldns_radix_next(first);
}
