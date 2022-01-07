
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ root; } ;
typedef TYPE_1__ ldns_radix_t ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_radix_node_free ;
 int ldns_radix_traverse_postorder (scalar_t__,int ,int *) ;

void
ldns_radix_free(ldns_radix_t* tree)
{
 if (tree) {
  if (tree->root) {
   ldns_radix_traverse_postorder(tree->root,
    ldns_radix_node_free, ((void*)0));
  }
  LDNS_FREE(tree);
 }
 return;
}
