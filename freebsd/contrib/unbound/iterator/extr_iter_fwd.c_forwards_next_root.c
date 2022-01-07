
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct iter_forwards {int tree; } ;
struct TYPE_2__ {struct iter_forward_zone* key; } ;
struct iter_forward_zone {scalar_t__ dclass; int namelen; int * name; scalar_t__ namelabs; TYPE_1__ node; } ;
typedef int rbnode_type ;


 int * RBTREE_NULL ;
 scalar_t__ dname_is_root (int *) ;
 scalar_t__ rbtree_find_less_equal (int ,struct iter_forward_zone*,int **) ;
 int * rbtree_first (int ) ;
 int * rbtree_next (int *) ;

int
forwards_next_root(struct iter_forwards* fwd, uint16_t* dclass)
{
 struct iter_forward_zone key;
 rbnode_type* n;
 struct iter_forward_zone* p;
 if(*dclass == 0) {

  n = rbtree_first(fwd->tree);
  if(n == RBTREE_NULL)
   return 0;
  p = (struct iter_forward_zone*)n;
  if(dname_is_root(p->name)) {
   *dclass = p->dclass;
   return 1;
  }

  *dclass = p->dclass + 1;
  return forwards_next_root(fwd, dclass);
 }



 key.node.key = &key;
 key.name = (uint8_t*)"\000";
 key.namelen = 1;
 key.namelabs = 0;
 key.dclass = *dclass;
 n = ((void*)0);
 if(rbtree_find_less_equal(fwd->tree, &key, &n)) {

  return 1;
 } else {

  if(!n || n == RBTREE_NULL)
   return 0;
  n = rbtree_next(n);
  if(n == RBTREE_NULL)
   return 0;
  p = (struct iter_forward_zone*)n;
  if(dname_is_root(p->name)) {
   *dclass = p->dclass;
   return 1;
  }

  *dclass = p->dclass+1;
  return forwards_next_root(fwd, dclass);
 }
}
