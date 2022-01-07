
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_anchors {int lock; } ;


 int anchors_init_parents_locked (struct val_anchors*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

__attribute__((used)) static void
init_parents(struct val_anchors* anchors)
{
 lock_basic_lock(&anchors->lock);
 anchors_init_parents_locked(anchors);
 lock_basic_unlock(&anchors->lock);
}
