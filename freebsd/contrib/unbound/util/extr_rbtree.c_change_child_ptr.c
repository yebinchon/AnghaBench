
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* parent; } ;
typedef TYPE_1__ rbnode_type ;


 TYPE_1__* RBTREE_NULL ;
 int log_assert (int) ;

__attribute__((used)) static void change_child_ptr(rbnode_type* child, rbnode_type* old,
 rbnode_type* new)
{
 if(child == RBTREE_NULL) return;
 log_assert(child->parent == old || child->parent == new);
 if(child->parent == old) child->parent = new;
}
