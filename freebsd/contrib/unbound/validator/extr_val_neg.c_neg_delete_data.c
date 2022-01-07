
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct val_neg_zone {TYPE_1__ tree; } ;
struct val_neg_data {int in_use; scalar_t__ count; struct val_neg_data* name; scalar_t__ len; int node; struct val_neg_data* parent; struct val_neg_zone* zone; } ;
struct val_neg_cache {int use; struct val_neg_data* last; struct val_neg_data* first; } ;


 int free (struct val_neg_data*) ;
 int log_assert (int) ;
 int neg_delete_zone (struct val_neg_cache*,struct val_neg_zone*) ;
 int neg_lru_remove (struct val_neg_cache*,struct val_neg_data*) ;
 int rbtree_delete (TYPE_1__*,int *) ;

void neg_delete_data(struct val_neg_cache* neg, struct val_neg_data* el)
{
 struct val_neg_zone* z;
 struct val_neg_data* p, *np;
 if(!el) return;
 z = el->zone;
 log_assert(el->in_use);
 log_assert(el->count > 0);
 el->in_use = 0;


 neg_lru_remove(neg, el);
 log_assert(neg->first != el && neg->last != el);


 p = el;
 while(p) {
  log_assert(p->count > 0);
  p->count --;
  p = p->parent;
 }


 p = el;
 while(p && p->count == 0) {
  np = p->parent;
  (void)rbtree_delete(&z->tree, &p->node);
  neg->use -= p->len + sizeof(*p);
  free(p->name);
  free(p);
  p = np;
 }


 if(z->tree.count == 0) {
  neg_delete_zone(neg, z);
 }
}
