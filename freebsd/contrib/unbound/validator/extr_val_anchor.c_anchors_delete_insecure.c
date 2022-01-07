
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct val_anchors {int lock; int tree; } ;
struct TYPE_3__ {struct trust_anchor* key; } ;
struct trust_anchor {TYPE_1__ node; int lock; scalar_t__ numDNSKEY; scalar_t__ numDS; scalar_t__ autr; scalar_t__ keylist; int dclass; int namelen; int namelabs; int * name; } ;


 int anchors_delfunc (TYPE_1__*,int *) ;
 int anchors_init_parents_locked (struct val_anchors*) ;
 int dname_count_size_labels (int *,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int rbtree_delete (int ,TYPE_1__*) ;
 scalar_t__ rbtree_search (int ,struct trust_anchor*) ;

void
anchors_delete_insecure(struct val_anchors* anchors, uint16_t c,
        uint8_t* nm)
{
 struct trust_anchor key;
 struct trust_anchor* ta;
 key.node.key = &key;
 key.name = nm;
 key.namelabs = dname_count_size_labels(nm, &key.namelen);
 key.dclass = c;
 lock_basic_lock(&anchors->lock);
 if(!(ta=(struct trust_anchor*)rbtree_search(anchors->tree, &key))) {
  lock_basic_unlock(&anchors->lock);

  return;
 }

 lock_basic_lock(&ta->lock);

 if(ta->keylist || ta->autr || ta->numDS || ta->numDNSKEY) {
  lock_basic_unlock(&anchors->lock);
  lock_basic_unlock(&ta->lock);

  return;
 }


 (void)rbtree_delete(anchors->tree, &ta->node);
 anchors_init_parents_locked(anchors);
 lock_basic_unlock(&anchors->lock);


 lock_basic_unlock(&ta->lock);
 anchors_delfunc(&ta->node, ((void*)0));
}
