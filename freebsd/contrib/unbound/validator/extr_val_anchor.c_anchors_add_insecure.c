
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct val_anchors {int lock; int tree; } ;
struct TYPE_2__ {struct trust_anchor* key; } ;
struct trust_anchor {int namelen; int namelabs; int dclass; int * name; TYPE_1__ node; } ;


 int anchor_new_ta (struct val_anchors*,int *,int ,int ,int ,int ) ;
 int anchors_init_parents_locked (struct val_anchors*) ;
 int dname_count_size_labels (int *,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 scalar_t__ rbtree_search (int ,struct trust_anchor*) ;

int
anchors_add_insecure(struct val_anchors* anchors, uint16_t c, uint8_t* nm)
{
 struct trust_anchor key;
 key.node.key = &key;
 key.name = nm;
 key.namelabs = dname_count_size_labels(nm, &key.namelen);
 key.dclass = c;
 lock_basic_lock(&anchors->lock);
 if(rbtree_search(anchors->tree, &key)) {
  lock_basic_unlock(&anchors->lock);

  return 1;
 }
 if(!anchor_new_ta(anchors, nm, key.namelabs, key.namelen, c, 0)) {
  log_err("out of memory");
  lock_basic_unlock(&anchors->lock);
  return 0;
 }

 anchors_init_parents_locked(anchors);
 lock_basic_unlock(&anchors->lock);
 return 1;
}
