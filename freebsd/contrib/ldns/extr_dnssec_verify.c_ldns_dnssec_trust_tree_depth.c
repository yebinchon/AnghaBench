
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t parent_count; struct TYPE_3__** parents; } ;
typedef TYPE_1__ ldns_dnssec_trust_tree ;



size_t
ldns_dnssec_trust_tree_depth(ldns_dnssec_trust_tree *tree)
{
 size_t result = 0;
 size_t parent = 0;
 size_t i;

 for (i = 0; i < tree->parent_count; i++) {
  parent = ldns_dnssec_trust_tree_depth(tree->parents[i]);
  if (parent > result) {
   result = parent;
  }
 }
 return 1 + result;
}
