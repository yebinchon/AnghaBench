
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_lock {int dummy; } ;
struct futex_condvar {scalar_t__ fc_waitcount; int fc_address; struct futex_lock* fc_lock; } ;


 int LIST_REMOVE (struct futex_condvar*,int ) ;
 int M_FUTEX ;
 int fc_next ;
 int free (struct futex_condvar*,int ) ;
 int futex_address_free (int *) ;
 int futex_condvar_assert (struct futex_condvar*) ;
 int futex_lock_release (struct futex_lock*) ;

__attribute__((used)) static void
futex_condvar_release(struct futex_condvar *fc)
{
 struct futex_lock *fl;

 futex_condvar_assert(fc);
 fl = fc->fc_lock;
 if (fc->fc_waitcount == 0) {

  futex_address_free(&fc->fc_address);
  LIST_REMOVE(fc, fc_next);
  free(fc, M_FUTEX);
 }
 futex_lock_release(fl);
}
