
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int height; struct radix_tree_node* rnode; } ;
struct radix_tree_node {scalar_t__ count; struct radix_tree_node** slots; } ;


 int M_RADIX ;
 int RADIX_TREE_MAX_HEIGHT ;
 int free (struct radix_tree_node*,int ) ;
 unsigned long radix_max (struct radix_tree_root*) ;
 size_t radix_pos (unsigned long,int) ;

void *
radix_tree_delete(struct radix_tree_root *root, unsigned long index)
{
 struct radix_tree_node *stack[RADIX_TREE_MAX_HEIGHT];
 struct radix_tree_node *node;
 void *item;
 int height;
 int idx;

 item = ((void*)0);
 node = root->rnode;
 height = root->height - 1;
 if (index > radix_max(root))
  goto out;



 while (height && node) {
  stack[height] = node;
  node = node->slots[radix_pos(index, height--)];
 }
 idx = radix_pos(index, 0);
 if (node)
  item = node->slots[idx];



 if (item)
  for (;;) {
   node->slots[idx] = ((void*)0);
   node->count--;
   if (node->count > 0)
    break;
   free(node, M_RADIX);
   if (node == root->rnode) {
    root->rnode = ((void*)0);
    root->height = 0;
    break;
   }
   height++;
   node = stack[height];
   idx = radix_pos(index, height);
  }
out:
 return (item);
}
