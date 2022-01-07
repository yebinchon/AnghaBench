
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dtp_refcnt; TYPE_1__* dtp_difo; } ;
typedef TYPE_2__ dtrace_predicate_t ;
struct TYPE_4__ {scalar_t__ dtdo_refcnt; } ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int dtrace_lock ;

__attribute__((used)) static void
dtrace_predicate_hold(dtrace_predicate_t *pred)
{
 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(pred->dtp_difo != ((void*)0) && pred->dtp_difo->dtdo_refcnt != 0);
 ASSERT(pred->dtp_refcnt > 0);

 pred->dtp_refcnt++;
}
