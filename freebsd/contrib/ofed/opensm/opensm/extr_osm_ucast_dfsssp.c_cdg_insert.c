
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ channelID; struct TYPE_4__* parent; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ cdg_node_t ;



__attribute__((used)) static void cdg_insert(cdg_node_t ** root, cdg_node_t * new_node)
{
 cdg_node_t *current = *root;

 if (!current) {
  current = new_node;
  *root = current;
  return;
 }

 while (current) {
  if (new_node->channelID < current->channelID) {
   if (current->left) {
    current = current->left;
   } else {
    current->left = new_node;
    new_node->parent = current;
    break;
   }
  } else if (new_node->channelID > current->channelID) {
   if (current->right) {
    current = current->right;
   } else {
    current->right = new_node;
    new_node->parent = current;
    break;
   }
  } else if (new_node->channelID == current->channelID) {

   break;
  }
 }
}
