
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_zone {int in_use; scalar_t__ count; struct val_neg_zone* name; struct val_neg_zone* nsec3_salt; scalar_t__ len; int node; struct val_neg_zone* parent; } ;
struct val_neg_cache {int use; int tree; } ;


 int free (struct val_neg_zone*) ;
 int log_assert (int) ;
 int rbtree_delete (int *,int *) ;

__attribute__((used)) static void neg_delete_zone(struct val_neg_cache* neg, struct val_neg_zone* z)
{
 struct val_neg_zone* p, *np;
 if(!z) return;
 log_assert(z->in_use);
 log_assert(z->count > 0);
 z->in_use = 0;


 p = z;
 while(p) {
  log_assert(p->count > 0);
  p->count --;
  p = p->parent;
 }


 p = z;
 while(p && p->count == 0) {
  np = p->parent;
  (void)rbtree_delete(&neg->tree, &p->node);
  neg->use -= p->len + sizeof(*p);
  free(p->nsec3_salt);
  free(p->name);
  free(p);
  p = np;
 }
}
