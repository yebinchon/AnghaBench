
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct val_anchors {int lock; TYPE_2__* autr; } ;
struct TYPE_3__ {size_t count; } ;
struct TYPE_4__ {TYPE_1__ probe; } ;


 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

size_t
autr_get_num_anchors(struct val_anchors* anchors)
{
 size_t res = 0;
 if(!anchors)
  return 0;
 lock_basic_lock(&anchors->lock);
 if(anchors->autr)
  res = anchors->autr->probe.count;
 lock_basic_unlock(&anchors->lock);
 return res;
}
