
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_neg_zone {int tree; } ;
struct TYPE_2__ {struct val_neg_data* key; } ;
struct val_neg_data {size_t len; int labs; int * name; TYPE_1__ node; } ;
typedef int rbnode_type ;


 scalar_t__ rbtree_find_less_equal (int *,struct val_neg_data*,int **) ;

__attribute__((used)) static int neg_closest_data(struct val_neg_zone* zone,
 uint8_t* qname, size_t len, int labs, struct val_neg_data** data)
{
 struct val_neg_data key;
 rbnode_type* r;
 key.node.key = &key;
 key.name = qname;
 key.len = len;
 key.labs = labs;
 if(rbtree_find_less_equal(&zone->tree, &key, &r)) {

  *data = (struct val_neg_data*)r;
  return 1;
 } else {

  *data = (struct val_neg_data*)r;
  return 0;
 }
}
