
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int gfp_mask; int height; struct radix_tree_node* rnode; } ;
struct radix_tree_node {scalar_t__ count; struct radix_tree_node** slots; } ;


 int E2BIG ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int M_RADIX ;
 int M_ZERO ;
 int RADIX_TREE_MAX_HEIGHT ;
 int free (struct radix_tree_node*,int ) ;
 struct radix_tree_node* malloc (int,int ,int) ;
 unsigned long radix_max (struct radix_tree_root*) ;
 int radix_pos (unsigned long,int) ;

int
radix_tree_insert(struct radix_tree_root *root, unsigned long index, void *item)
{
 struct radix_tree_node *node;
 struct radix_tree_node *temp[RADIX_TREE_MAX_HEIGHT - 1];
 int height;
 int idx;


 if (item == ((void*)0))
  return (-EINVAL);


 node = root->rnode;


 if (node == ((void*)0)) {
  node = malloc(sizeof(*node), M_RADIX, root->gfp_mask | M_ZERO);
  if (node == ((void*)0))
   return (-ENOMEM);
  root->rnode = node;
  root->height++;
 }


 while (radix_max(root) < index) {


  if (root->height == RADIX_TREE_MAX_HEIGHT)
   return (-E2BIG);





  if (node->count != 0) {
   node = malloc(sizeof(*node), M_RADIX, root->gfp_mask | M_ZERO);
   if (node == ((void*)0))
    return (-ENOMEM);
   node->slots[0] = root->rnode;
   node->count++;
   root->rnode = node;
  }
  root->height++;
 }


 height = root->height - 1;


 for ( ; height != 0; height--) {
  idx = radix_pos(index, height);
  if (node->slots[idx] == ((void*)0))
   break;
  node = node->slots[idx];
 }


 for (idx = 0; idx != height; idx++) {
  temp[idx] = malloc(sizeof(*node), M_RADIX,
      root->gfp_mask | M_ZERO);
  if (temp[idx] == ((void*)0)) {
   while(idx--)
    free(temp[idx], M_RADIX);

   if (root->rnode->count == 0) {
    free(root->rnode, M_RADIX);
    root->rnode = ((void*)0);
    root->height = 0;
   }
   return (-ENOMEM);
  }
 }


 for ( ; height != 0; height--) {
  idx = radix_pos(index, height);
  node->slots[idx] = temp[height - 1];
  node->count++;
  node = node->slots[idx];
 }




 idx = radix_pos(index, 0);
 if (node->slots[idx])
  return (-EEXIST);
 node->slots[idx] = item;
 node->count++;

 return (0);
}
