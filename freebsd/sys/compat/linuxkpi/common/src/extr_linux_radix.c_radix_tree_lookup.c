
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int height; struct radix_tree_node* rnode; } ;
struct radix_tree_node {struct radix_tree_node** slots; } ;


 unsigned long radix_max (struct radix_tree_root*) ;
 size_t radix_pos (unsigned long,int ) ;

void *
radix_tree_lookup(struct radix_tree_root *root, unsigned long index)
{
 struct radix_tree_node *node;
 void *item;
 int height;

 item = ((void*)0);
 node = root->rnode;
 height = root->height - 1;
 if (index > radix_max(root))
  goto out;
 while (height && node)
  node = node->slots[radix_pos(index, height--)];
 if (node)
  item = node->slots[radix_pos(index, 0)];

out:
 return (item);
}
