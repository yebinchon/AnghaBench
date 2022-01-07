
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iter_hints_stub {int node; } ;
struct iter_hints {int tree; } ;
struct delegpt {int namelabs; int namelen; int name; } ;


 int hints_insert (struct iter_hints*,int ,struct delegpt*,int) ;
 int hints_stub_free (struct iter_hints_stub*) ;
 scalar_t__ name_tree_find (int *,int ,int ,int ,int ) ;
 int name_tree_init_parents (int *) ;
 int rbtree_delete (int *,int *) ;

int
hints_add_stub(struct iter_hints* hints, uint16_t c, struct delegpt* dp,
 int noprime)
{
 struct iter_hints_stub *z;
 if((z=(struct iter_hints_stub*)name_tree_find(&hints->tree,
  dp->name, dp->namelen, dp->namelabs, c)) != ((void*)0)) {
  (void)rbtree_delete(&hints->tree, &z->node);
  hints_stub_free(z);
 }
 if(!hints_insert(hints, c, dp, noprime))
  return 0;
 name_tree_init_parents(&hints->tree);
 return 1;
}
