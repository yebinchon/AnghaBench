
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_lock {scalar_t__ fl_waitcount; scalar_t__ fl_owner; int fl_address; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct futex_lock*,int ) ;
 scalar_t__ LOCK_UNMANAGED ;
 int M_FUTEX ;
 int fl_next ;
 int free (struct futex_lock*,int ) ;
 int futex_address_free (int *) ;
 int futex_global_lock ;
 int futex_lock_assert (struct futex_lock*) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
futex_lock_release(struct futex_lock *fl)
{

 futex_lock_assert(fl);
 if (fl->fl_waitcount == 0) {

  KASSERT(fl->fl_owner == LOCK_UNMANAGED,
      ("Attempted to free a managed lock"));
  futex_address_free(&fl->fl_address);
  LIST_REMOVE(fl, fl_next);
  free(fl, M_FUTEX);
 }
 sx_xunlock(&futex_global_lock);
}
