
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* dtps_enable ) (void*,dtrace_id_t,void*) ;} ;
struct TYPE_4__ {int dtpv_defunct; TYPE_1__ dtpv_pops; } ;
typedef TYPE_2__ dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;


 int ASSERT (int) ;
 int dtrace_gethrtime () ;
 int dtrace_lock ;
 scalar_t__ dtrace_nullop ;
 int dtrace_provider_lock ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dtrace_invalidate(dtrace_provider_id_t id)
{
 dtrace_provider_t *pvp = (dtrace_provider_t *)id;

 ASSERT(pvp->dtpv_pops.dtps_enable !=
     (void (*)(void *, dtrace_id_t, void *))dtrace_nullop);

 mutex_enter(&dtrace_provider_lock);
 mutex_enter(&dtrace_lock);

 pvp->dtpv_defunct = dtrace_gethrtime();

 mutex_exit(&dtrace_lock);
 mutex_exit(&dtrace_provider_lock);
}
