
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct val_anchors {int lock; int * tree; TYPE_1__* autr; } ;
struct TYPE_4__ {struct trust_anchor* key; } ;
struct trust_anchor {size_t namelen; struct trust_anchor* autr; int lock; struct trust_anchor* name; TYPE_2__ pnode; TYPE_2__ node; int dclass; int namelabs; } ;
struct autr_point_data {size_t namelen; struct autr_point_data* autr; int lock; struct autr_point_data* name; TYPE_2__ pnode; TYPE_2__ node; int dclass; int namelabs; } ;
struct TYPE_3__ {int probe; } ;


 scalar_t__ calloc (int,int) ;
 int dname_count_labels (struct trust_anchor*) ;
 int free (struct trust_anchor*) ;
 int lock_basic_init (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int lock_protect (int *,struct trust_anchor*,int) ;
 int log_err (char*) ;
 struct trust_anchor* memdup (int *,size_t) ;
 int rbtree_delete (int *,struct trust_anchor*) ;
 int rbtree_insert (int *,TYPE_2__*) ;

__attribute__((used)) static struct trust_anchor*
autr_tp_create(struct val_anchors* anchors, uint8_t* own, size_t own_len,
 uint16_t dc)
{
 struct trust_anchor* tp = (struct trust_anchor*)calloc(1, sizeof(*tp));
 if(!tp) return ((void*)0);
 tp->name = memdup(own, own_len);
 if(!tp->name) {
  free(tp);
  return ((void*)0);
 }
 tp->namelen = own_len;
 tp->namelabs = dname_count_labels(tp->name);
 tp->node.key = tp;
 tp->dclass = dc;
 tp->autr = (struct autr_point_data*)calloc(1, sizeof(*tp->autr));
 if(!tp->autr) {
  free(tp->name);
  free(tp);
  return ((void*)0);
 }
 tp->autr->pnode.key = tp;

 lock_basic_lock(&anchors->lock);
 if(!rbtree_insert(anchors->tree, &tp->node)) {
  lock_basic_unlock(&anchors->lock);
  log_err("trust anchor presented twice");
  free(tp->name);
  free(tp->autr);
  free(tp);
  return ((void*)0);
 }
 if(!rbtree_insert(&anchors->autr->probe, &tp->autr->pnode)) {
  (void)rbtree_delete(anchors->tree, tp);
  lock_basic_unlock(&anchors->lock);
  log_err("trust anchor in probetree twice");
  free(tp->name);
  free(tp->autr);
  free(tp);
  return ((void*)0);
 }
 lock_basic_unlock(&anchors->lock);
 lock_basic_init(&tp->lock);
 lock_protect(&tp->lock, tp, sizeof(*tp));
 lock_protect(&tp->lock, tp->autr, sizeof(*tp->autr));
 return tp;
}
