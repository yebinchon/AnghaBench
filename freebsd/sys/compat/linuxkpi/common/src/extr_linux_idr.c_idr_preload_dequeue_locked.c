
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; } ;
struct linux_idr_cache {int count; struct idr_layer* head; TYPE_1__ lock; } ;
struct idr_layer {struct idr_layer** ary; } ;


 scalar_t__ likely (int ) ;
 scalar_t__ mtx_owned (int *) ;

__attribute__((used)) static struct idr_layer *
idr_preload_dequeue_locked(struct linux_idr_cache *lic)
{
 struct idr_layer *retval;


 if (mtx_owned(&lic->lock.m) == 0)
  return (((void*)0));

 retval = lic->head;
 if (likely(retval != ((void*)0))) {
  lic->head = retval->ary[0];
  lic->count--;
  retval->ary[0] = ((void*)0);
 }
 return (retval);
}
