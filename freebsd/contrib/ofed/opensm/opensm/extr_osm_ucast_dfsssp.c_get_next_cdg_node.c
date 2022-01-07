
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int visited; scalar_t__ status; struct TYPE_4__* parent; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ cdg_node_t ;


 scalar_t__ UNKNOWN ;

__attribute__((used)) static cdg_node_t *get_next_cdg_node(cdg_node_t * root)
{
 cdg_node_t *current = root, *res = ((void*)0);

 while (current) {
  current->visited = 1;
  if (current->status == UNKNOWN) {
   res = current;
   break;
  }
  if (current->left && !current->left->visited) {
   current = current->left;
  } else if (current->right && !current->right->visited) {
   current = current->right;
  } else {
   if (current->left)
    current->left->visited = 0;
   if (current->right)
    current->right->visited = 0;
   if (current->parent == ((void*)0))
    break;
   else
    current = current->parent;
  }
 }


 while (current) {
  current->visited = 0;
  if (current->left)
   current->left->visited = 0;
  if (current->right)
   current->right->visited = 0;
  current = current->parent;
 }

 return res;
}
