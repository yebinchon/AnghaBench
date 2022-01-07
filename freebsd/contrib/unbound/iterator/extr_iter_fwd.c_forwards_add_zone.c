
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iter_forwards {int tree; } ;
struct iter_forward_zone {int node; } ;
struct delegpt {int name; } ;


 int forwards_insert (struct iter_forwards*,int ,struct delegpt*) ;
 int fwd_init_parents (struct iter_forwards*) ;
 struct iter_forward_zone* fwd_zone_find (struct iter_forwards*,int ,int ) ;
 int fwd_zone_free (struct iter_forward_zone*) ;
 int rbtree_delete (int ,int *) ;

int
forwards_add_zone(struct iter_forwards* fwd, uint16_t c, struct delegpt* dp)
{
 struct iter_forward_zone *z;
 if((z=fwd_zone_find(fwd, c, dp->name)) != ((void*)0)) {
  (void)rbtree_delete(fwd->tree, &z->node);
  fwd_zone_free(z);
 }
 if(!forwards_insert(fwd, c, dp))
  return 0;
 fwd_init_parents(fwd);
 return 1;
}
