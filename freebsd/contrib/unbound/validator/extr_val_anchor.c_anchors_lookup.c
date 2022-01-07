
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct val_anchors {int lock; int tree; } ;
struct TYPE_2__ {struct trust_anchor* key; } ;
struct trust_anchor {int namelabs; size_t namelen; scalar_t__ dclass; int lock; struct trust_anchor* parent; int * name; TYPE_1__ node; } ;
typedef int rbnode_type ;


 int dname_count_labels (int *) ;
 int dname_lab_cmp (int *,int,int *,int,int*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 scalar_t__ rbtree_find_less_equal (int ,struct trust_anchor*,int **) ;

struct trust_anchor*
anchors_lookup(struct val_anchors* anchors,
        uint8_t* qname, size_t qname_len, uint16_t qclass)
{
 struct trust_anchor key;
 struct trust_anchor* result;
 rbnode_type* res = ((void*)0);
 key.node.key = &key;
 key.name = qname;
 key.namelabs = dname_count_labels(qname);
 key.namelen = qname_len;
 key.dclass = qclass;
 lock_basic_lock(&anchors->lock);
 if(rbtree_find_less_equal(anchors->tree, &key, &res)) {

  result = (struct trust_anchor*)res;
 } else {

  int m;
  result = (struct trust_anchor*)res;
  if(!result || result->dclass != qclass) {
   lock_basic_unlock(&anchors->lock);
   return ((void*)0);
  }

  (void)dname_lab_cmp(result->name, result->namelabs, key.name,
   key.namelabs, &m);
  while(result) {
   if(result->namelabs <= m)
    break;
   result = result->parent;
  }
 }
 if(result) {
  lock_basic_lock(&result->lock);
 }
 lock_basic_unlock(&anchors->lock);
 return result;
}
