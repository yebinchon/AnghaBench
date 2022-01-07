
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_overlapped {int call_count; uintptr_t* keys; scalar_t__* sizes; int lock; } ;
typedef scalar_t__ ev_ssize_t ;


 int EVLOCK_LOCK (int ,int ) ;
 int EVLOCK_UNLOCK (int ,int ) ;

__attribute__((used)) static int
pair_is_in(struct dummy_overlapped *o, uintptr_t key, ev_ssize_t n)
{
 int i;
 int result = 0;
 EVLOCK_LOCK(o->lock, 0);
 for (i=0; i < o->call_count; ++i) {
  if (o->keys[i] == key && o->sizes[i] == n) {
   result = 1;
   break;
  }
 }
 EVLOCK_UNLOCK(o->lock, 0);
 return result;
}
