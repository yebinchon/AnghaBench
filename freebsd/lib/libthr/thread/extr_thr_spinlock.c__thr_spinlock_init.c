
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int _thr_umutex_init (int *) ;
 TYPE_1__* extra ;
 int initialized ;
 int spinlock_count ;
 int spinlock_static_lock ;

void
_thr_spinlock_init(void)
{
 int i;

 _thr_umutex_init(&spinlock_static_lock);
 if (initialized != 0) {
  for (i = 0; i < spinlock_count; i++)
   _thr_umutex_init(&extra[i].lock);
 } else {
  initialized = 1;
 }
}
