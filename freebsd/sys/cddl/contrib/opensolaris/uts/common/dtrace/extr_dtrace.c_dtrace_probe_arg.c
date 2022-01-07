
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;
struct TYPE_3__ {void* dtpr_arg; int * dtpr_provider; } ;
typedef TYPE_1__ dtrace_probe_t ;
typedef int dtrace_id_t ;


 int dtrace_lock ;
 TYPE_1__* dtrace_probe_lookup_id (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void *
dtrace_probe_arg(dtrace_provider_id_t id, dtrace_id_t pid)
{
 dtrace_probe_t *probe;
 void *rval = ((void*)0);

 mutex_enter(&dtrace_lock);

 if ((probe = dtrace_probe_lookup_id(pid)) != ((void*)0) &&
     probe->dtpr_provider == (dtrace_provider_t *)id)
  rval = probe->dtpr_arg;

 mutex_exit(&dtrace_lock);

 return (rval);
}
