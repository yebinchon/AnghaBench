
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_lock {scalar_t__ fl_owner; scalar_t__ fl_waitcount; int fl_writers; int fl_readers; } ;


 int KASSERT (int,char*) ;
 scalar_t__ LOCK_UNMANAGED ;
 scalar_t__ futex_queue_count (int *) ;

__attribute__((used)) static void
futex_lock_assert(const struct futex_lock *fl)
{






 KASSERT((fl->fl_owner == LOCK_UNMANAGED) ==
     (futex_queue_count(&fl->fl_readers) == 0 &&
     futex_queue_count(&fl->fl_writers) == 0),
     ("Managed locks must have waiting threads"));
 KASSERT(fl->fl_waitcount != 0 || fl->fl_owner == LOCK_UNMANAGED,
     ("Lock with no waiters must be unmanaged"));
}
