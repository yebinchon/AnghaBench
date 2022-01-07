
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * root; } ;
typedef TYPE_1__ ldns_radix_t ;
struct TYPE_9__ {int len; struct TYPE_9__* parent; scalar_t__ data; } ;
typedef TYPE_2__ ldns_radix_node_t ;


 int ldns_radix_cleanup_leaf (TYPE_2__*) ;
 int ldns_radix_cleanup_onechild (TYPE_2__*) ;
 int ldns_radix_node_free (TYPE_2__*,int *) ;

__attribute__((used)) static void
ldns_radix_del_fix(ldns_radix_t* tree, ldns_radix_node_t* node)
{
 while (node) {
  if (node->data) {

   return;
  } else if (node->len == 1 && node->parent) {

   ldns_radix_cleanup_onechild(node);
   return;
  } else if (node->len == 0) {

   ldns_radix_node_t* parent = node->parent;
   if (!parent) {

    ldns_radix_node_free(node, ((void*)0));
    tree->root = ((void*)0);
    return;
   }

   ldns_radix_cleanup_leaf(node);
   node = parent;
  } else {




   return;
  }
 }

 return;
}
