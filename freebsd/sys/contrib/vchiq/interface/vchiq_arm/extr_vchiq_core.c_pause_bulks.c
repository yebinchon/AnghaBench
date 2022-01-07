
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bulk_transfer_mutex; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;


 int WARN_ON_ONCE (int) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 int lmutex_lock (int *) ;
 int pause_bulks_count ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
pause_bulks(VCHIQ_STATE_T *state)
{
 if (unlikely(atomic_inc_return(&pause_bulks_count) != 1)) {
  WARN_ON_ONCE(1);
  atomic_set(&pause_bulks_count, 1);
  return;
 }


 lmutex_lock(&state->bulk_transfer_mutex);
}
