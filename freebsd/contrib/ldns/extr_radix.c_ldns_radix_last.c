
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ ldns_radix_t ;
typedef int ldns_radix_node_t ;


 int * ldns_radix_last_in_subtree_incl_self (int ) ;

ldns_radix_node_t*
ldns_radix_last(const ldns_radix_t* tree)
{
 if (!tree || !tree->root) {
  return ((void*)0);
 }
 return ldns_radix_last_in_subtree_incl_self(tree->root);
}
