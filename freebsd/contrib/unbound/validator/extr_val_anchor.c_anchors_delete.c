
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_anchors {struct val_anchors* autr; struct val_anchors* tree; int lock; } ;


 int anchors_delfunc ;
 int autr_global_delete (struct val_anchors*) ;
 int free (struct val_anchors*) ;
 int lock_basic_destroy (int *) ;
 int lock_unprotect (int *,struct val_anchors*) ;
 int traverse_postorder (struct val_anchors*,int ,int *) ;

void
anchors_delete(struct val_anchors* anchors)
{
 if(!anchors)
  return;
 lock_unprotect(&anchors->lock, anchors->autr);
 lock_unprotect(&anchors->lock, anchors);
 lock_basic_destroy(&anchors->lock);
 if(anchors->tree)
  traverse_postorder(anchors->tree, anchors_delfunc, ((void*)0));
 free(anchors->tree);
 autr_global_delete(anchors->autr);
 free(anchors);
}
