
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {struct name_tree_node* key; } ;
struct name_tree_node {scalar_t__ dclass; int len; int * name; scalar_t__ labs; TYPE_1__ node; } ;
typedef int rbtree_type ;
typedef int rbnode_type ;


 int * RBTREE_NULL ;
 scalar_t__ dname_is_root (int *) ;
 scalar_t__ rbtree_find_less_equal (int *,struct name_tree_node*,int **) ;
 int * rbtree_first (int *) ;
 int * rbtree_next (int *) ;

int
name_tree_next_root(rbtree_type* tree, uint16_t* dclass)
{
 struct name_tree_node key;
 rbnode_type* n;
 struct name_tree_node* p;
 if(*dclass == 0) {

  n = rbtree_first(tree);
  if(n == RBTREE_NULL)
   return 0;
  p = (struct name_tree_node*)n;
  if(dname_is_root(p->name)) {
   *dclass = p->dclass;
   return 1;
  }

  *dclass = p->dclass + 1;
  return name_tree_next_root(tree, dclass);
 }



 key.node.key = &key;
 key.name = (uint8_t*)"\000";
 key.len = 1;
 key.labs = 0;
 key.dclass = *dclass;
 n = ((void*)0);
 if(rbtree_find_less_equal(tree, &key, &n)) {

  return 1;
 } else {

  if(!n || n == RBTREE_NULL)
   return 0;
  n = rbtree_next(n);
  if(n == RBTREE_NULL)
   return 0;
  p = (struct name_tree_node*)n;
  if(dname_is_root(p->name)) {
   *dclass = p->dclass;
   return 1;
  }

  *dclass = p->dclass+1;
  return name_tree_next_root(tree, dclass);
 }
}
