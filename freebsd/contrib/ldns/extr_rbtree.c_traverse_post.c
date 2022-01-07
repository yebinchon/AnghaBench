
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef TYPE_1__ ldns_rbnode_t ;


 TYPE_1__* LDNS_RBTREE_NULL ;
 void stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static void
traverse_post(void (*func)(ldns_rbnode_t*, void*), void* arg,
 ldns_rbnode_t* node)
{
 if(!node || node == LDNS_RBTREE_NULL)
  return;

 traverse_post(func, arg, node->left);
 traverse_post(func, arg, node->right);

 (*func)(node, arg);
}
