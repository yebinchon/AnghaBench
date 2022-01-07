
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_anchors {struct val_anchors* autr; int lock; int tree; } ;


 int anchor_cmp ;
 int anchors_delete (struct val_anchors*) ;
 struct val_anchors* autr_global_create () ;
 scalar_t__ calloc (int,int) ;
 int lock_basic_init (int *) ;
 int lock_protect (int *,struct val_anchors*,int) ;
 int rbtree_create (int ) ;

struct val_anchors*
anchors_create(void)
{
 struct val_anchors* a = (struct val_anchors*)calloc(1, sizeof(*a));
 if(!a)
  return ((void*)0);
 a->tree = rbtree_create(anchor_cmp);
 if(!a->tree) {
  anchors_delete(a);
  return ((void*)0);
 }
 a->autr = autr_global_create();
 if(!a->autr) {
  anchors_delete(a);
  return ((void*)0);
 }
 lock_basic_init(&a->lock);
 lock_protect(&a->lock, a, sizeof(*a));
 lock_protect(&a->lock, a->autr, sizeof(*a->autr));
 return a;
}
