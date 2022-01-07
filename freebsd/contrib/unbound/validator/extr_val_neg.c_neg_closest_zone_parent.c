
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {struct val_neg_zone* key; } ;
struct val_neg_zone {size_t len; int labs; scalar_t__ dclass; struct val_neg_zone* parent; int * name; TYPE_1__ node; } ;
struct val_neg_cache {int tree; } ;
typedef int rbnode_type ;


 int dname_lab_cmp (int *,int,int *,int,int*) ;
 scalar_t__ rbtree_find_less_equal (int *,struct val_neg_zone*,int **) ;

__attribute__((used)) static struct val_neg_zone* neg_closest_zone_parent(struct val_neg_cache* neg,
 uint8_t* nm, size_t nm_len, int labs, uint16_t qclass)
{
 struct val_neg_zone key;
 struct val_neg_zone* result;
 rbnode_type* res = ((void*)0);
 key.node.key = &key;
 key.name = nm;
 key.len = nm_len;
 key.labs = labs;
 key.dclass = qclass;
 if(rbtree_find_less_equal(&neg->tree, &key, &res)) {

  result = (struct val_neg_zone*)res;
 } else {

  int m;
  result = (struct val_neg_zone*)res;
  if(!result || result->dclass != qclass)
   return ((void*)0);

  (void)dname_lab_cmp(result->name, result->labs, key.name,
   key.labs, &m);
  while(result) {
   if(result->labs <= m)
    break;
   result = result->parent;
  }
 }
 return result;
}
