
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* parent; struct TYPE_4__* left; } ;
typedef TYPE_1__ cdg_node_t ;


 int cdg_node_dealloc (TYPE_1__*) ;

__attribute__((used)) static void cdg_dealloc(cdg_node_t ** root)
{
 cdg_node_t *current = *root;

 while (current) {
  if (current->left) {
   current = current->left;
  } else if (current->right) {
   current = current->right;
  } else {
   if (current->parent == ((void*)0)) {
    cdg_node_dealloc(current);
    *root = ((void*)0);
    break;
   }
   if (current->parent->left == current) {
    current = current->parent;
    cdg_node_dealloc(current->left);
    current->left = ((void*)0);
   } else if (current->parent->right == current) {
    current = current->parent;
    cdg_node_dealloc(current->right);
    current->right = ((void*)0);
   }
  }
 }
}
