
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_neg_zone {int tree; } ;
struct TYPE_2__ {struct val_neg_data* key; } ;
struct val_neg_data {size_t len; int labs; struct val_neg_data* parent; int * name; TYPE_1__ node; } ;
typedef int rbnode_type ;


 int dname_lab_cmp (int *,int,int *,int,int*) ;
 scalar_t__ rbtree_find_less_equal (int *,struct val_neg_data*,int **) ;

__attribute__((used)) static struct val_neg_data* neg_closest_data_parent(
 struct val_neg_zone* zone, uint8_t* nm, size_t nm_len, int labs)
{
 struct val_neg_data key;
 struct val_neg_data* result;
 rbnode_type* res = ((void*)0);
 key.node.key = &key;
 key.name = nm;
 key.len = nm_len;
 key.labs = labs;
 if(rbtree_find_less_equal(&zone->tree, &key, &res)) {

  result = (struct val_neg_data*)res;
 } else {

  int m;
  result = (struct val_neg_data*)res;
  if(!result)
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
