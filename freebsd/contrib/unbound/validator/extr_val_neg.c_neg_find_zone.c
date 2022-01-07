
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {struct val_neg_zone* key; } ;
struct val_neg_zone {size_t len; TYPE_1__ node; int dclass; int * name; int labs; } ;
struct val_neg_cache {int tree; } ;


 int dname_count_labels (int *) ;
 scalar_t__ rbtree_search (int *,struct val_neg_zone*) ;

struct val_neg_zone* neg_find_zone(struct val_neg_cache* neg,
 uint8_t* nm, size_t len, uint16_t dclass)
{
 struct val_neg_zone lookfor;
 struct val_neg_zone* result;
 lookfor.node.key = &lookfor;
 lookfor.name = nm;
 lookfor.len = len;
 lookfor.labs = dname_count_labels(lookfor.name);
 lookfor.dclass = dclass;

 result = (struct val_neg_zone*)
  rbtree_search(&neg->tree, lookfor.node.key);
 return result;
}
