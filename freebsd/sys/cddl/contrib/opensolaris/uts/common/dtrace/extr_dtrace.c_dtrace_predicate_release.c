
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_vstate_t ;
struct TYPE_6__ {scalar_t__ dtp_refcnt; TYPE_2__* dtp_difo; } ;
typedef TYPE_1__ dtrace_predicate_t ;
struct TYPE_7__ {scalar_t__ dtdo_refcnt; } ;
typedef TYPE_2__ dtrace_difo_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int dtrace_difo_release (TYPE_2__*,int *) ;
 int dtrace_lock ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
dtrace_predicate_release(dtrace_predicate_t *pred, dtrace_vstate_t *vstate)
{
 dtrace_difo_t *dp = pred->dtp_difo;

 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(dp != ((void*)0) && dp->dtdo_refcnt != 0);
 ASSERT(pred->dtp_refcnt > 0);

 if (--pred->dtp_refcnt == 0) {
  dtrace_difo_release(pred->dtp_difo, vstate);
  kmem_free(pred, sizeof (dtrace_predicate_t));
 }
}
