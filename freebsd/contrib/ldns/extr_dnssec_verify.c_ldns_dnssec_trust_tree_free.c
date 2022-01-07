
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t parent_count; struct TYPE_4__** parents; } ;
typedef TYPE_1__ ldns_dnssec_trust_tree ;


 int LDNS_FREE (TYPE_1__*) ;

void
ldns_dnssec_trust_tree_free(ldns_dnssec_trust_tree *tree)
{
 size_t i;
 if (tree) {
  for (i = 0; i < tree->parent_count; i++) {
   ldns_dnssec_trust_tree_free(tree->parents[i]);
  }
 }
 LDNS_FREE(tree);
}
