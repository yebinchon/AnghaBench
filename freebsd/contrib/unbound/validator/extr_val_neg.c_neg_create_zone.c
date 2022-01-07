
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct val_neg_zone {scalar_t__ count; struct val_neg_zone* parent; int node; scalar_t__ len; int name; } ;
struct val_neg_cache {int tree; int use; } ;


 int dname_count_labels (int *) ;
 int log_assert (int) ;
 struct val_neg_zone* neg_closest_zone_parent (struct val_neg_cache*,int *,size_t,int,int ) ;
 struct val_neg_zone* neg_zone_chain (int *,size_t,int,int ,struct val_neg_zone*) ;
 scalar_t__ query_dname_compare (int ,int *) ;
 int rbtree_insert (int *,int *) ;

struct val_neg_zone* neg_create_zone(struct val_neg_cache* neg,
 uint8_t* nm, size_t nm_len, uint16_t dclass)
{
 struct val_neg_zone* zone;
 struct val_neg_zone* parent;
 struct val_neg_zone* p, *np;
 int labs = dname_count_labels(nm);


 parent = neg_closest_zone_parent(neg, nm, nm_len, labs, dclass);
 if(parent && query_dname_compare(parent->name, nm) == 0)
  return parent;

 log_assert(!parent || parent->count > 0);
 zone = neg_zone_chain(nm, nm_len, labs, dclass, parent);
 if(!zone) {
  return ((void*)0);
 }


 p = zone;
 while(p) {
  np = p->parent;

  neg->use += sizeof(struct val_neg_zone) + p->len;

  (void)rbtree_insert(&neg->tree, &p->node);

  if(np == ((void*)0))
   p->parent = parent;
  p = np;
 }
 return zone;
}
