
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_rbnode_t ;
struct TYPE_9__ {int is_glue; } ;
typedef TYPE_2__ ldns_dnssec_name ;


 TYPE_1__* LDNS_RBTREE_NULL ;
 TYPE_1__* ldns_rbtree_next (TYPE_1__*) ;

ldns_rbnode_t *
ldns_dnssec_name_node_next_nonglue(ldns_rbnode_t *node)
{
 ldns_rbnode_t *next_node = ((void*)0);
 ldns_dnssec_name *next_name = ((void*)0);
 bool done = 0;

 if (node == LDNS_RBTREE_NULL) {
  return ((void*)0);
 }
 next_node = node;
 while (!done) {
  if (next_node == LDNS_RBTREE_NULL) {
   return ((void*)0);
  } else {
   next_name = (ldns_dnssec_name *)next_node->data;
   if (!next_name->is_glue) {
    done = 1;
   } else {
    next_node = ldns_rbtree_next(next_node);
   }
  }
 }
 return next_node;
}
