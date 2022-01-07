
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iter_forwards {int tree; } ;
struct iter_forward_zone {int node; int * dp; } ;


 int fwd_init_parents (struct iter_forwards*) ;
 struct iter_forward_zone* fwd_zone_find (struct iter_forwards*,int ,int *) ;
 int fwd_zone_free (struct iter_forward_zone*) ;
 int rbtree_delete (int ,int *) ;

void
forwards_delete_stub_hole(struct iter_forwards* fwd, uint16_t c, uint8_t* nm)
{
 struct iter_forward_zone *z;
 if(!(z=fwd_zone_find(fwd, c, nm)))
  return;
 if(z->dp != ((void*)0))
  return;
 (void)rbtree_delete(fwd->tree, &z->node);
 fwd_zone_free(z);
 fwd_init_parents(fwd);
}
