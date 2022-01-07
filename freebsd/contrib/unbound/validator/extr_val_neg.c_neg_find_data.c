
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct val_neg_zone {int tree; } ;
struct TYPE_2__ {struct val_neg_data* key; } ;
struct val_neg_data {size_t len; int labs; TYPE_1__ node; int * name; } ;


 scalar_t__ rbtree_search (int *,struct val_neg_data*) ;

__attribute__((used)) static struct val_neg_data* neg_find_data(struct val_neg_zone* zone,
 uint8_t* nm, size_t len, int labs)
{
 struct val_neg_data lookfor;
 struct val_neg_data* result;
 lookfor.node.key = &lookfor;
 lookfor.name = nm;
 lookfor.len = len;
 lookfor.labs = labs;

 result = (struct val_neg_data*)
  rbtree_search(&zone->tree, lookfor.node.key);
 return result;
}
