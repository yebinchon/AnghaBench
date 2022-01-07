
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct val_anchors {int lock; int tree; } ;
struct TYPE_4__ {struct trust_anchor* key; } ;
struct trust_anchor {int namelabs; size_t namelen; int lock; int dclass; int * name; TYPE_1__ node; } ;
struct TYPE_5__ {scalar_t__ key; } ;
typedef TYPE_2__ rbnode_type ;


 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 TYPE_2__* rbtree_search (int ,struct trust_anchor*) ;

struct trust_anchor*
anchor_find(struct val_anchors* anchors, uint8_t* name, int namelabs,
 size_t namelen, uint16_t dclass)
{
 struct trust_anchor key;
 rbnode_type* n;
 if(!name) return ((void*)0);
 key.node.key = &key;
 key.name = name;
 key.namelabs = namelabs;
 key.namelen = namelen;
 key.dclass = dclass;
 lock_basic_lock(&anchors->lock);
 n = rbtree_search(anchors->tree, &key);
 if(n) {
  lock_basic_lock(&((struct trust_anchor*)n->key)->lock);
 }
 lock_basic_unlock(&anchors->lock);
 if(!n)
  return ((void*)0);
 return (struct trust_anchor*)n->key;
}
