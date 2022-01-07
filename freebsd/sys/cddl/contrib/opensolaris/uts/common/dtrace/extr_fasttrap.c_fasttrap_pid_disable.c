
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int proc_t ;
struct TYPE_4__ {scalar_t__ ftp_rcount; int ftp_marked; int ftp_mtx; scalar_t__ ftp_retired; } ;
typedef TYPE_1__ fasttrap_provider_t ;
struct TYPE_5__ {scalar_t__ ftp_id; int ftp_ntps; scalar_t__ ftp_enabled; int ftp_pid; TYPE_1__* ftp_prov; } ;
typedef TYPE_2__ fasttrap_probe_t ;
typedef scalar_t__ dtrace_id_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int PGET_HOLD ;
 int PGET_NOTWEXIT ;
 int PRELE (int *) ;
 int cpu_lock ;
 int fasttrap_disable_callbacks () ;
 int fasttrap_pid_cleanup () ;
 int fasttrap_tracepoint_disable (int *,TYPE_2__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ pget (int ,int,int **) ;

__attribute__((used)) static void
fasttrap_pid_disable(void *arg, dtrace_id_t id, void *parg)
{
 fasttrap_probe_t *probe = parg;
 fasttrap_provider_t *provider = probe->ftp_prov;
 proc_t *p;
 int i, whack = 0;

 ASSERT(id == probe->ftp_id);

 mutex_enter(&provider->ftp_mtx);







 if (pget(probe->ftp_pid, PGET_HOLD | PGET_NOTWEXIT, &p) != 0)
  p = ((void*)0);




 if (probe->ftp_enabled) {
  for (i = 0; i < probe->ftp_ntps; i++) {
   fasttrap_tracepoint_disable(p, probe, i);
  }
 }

 ASSERT(provider->ftp_rcount > 0);
 provider->ftp_rcount--;

 if (p != ((void*)0)) {





  if (provider->ftp_retired && !provider->ftp_marked)
   whack = provider->ftp_marked = 1;
  mutex_exit(&provider->ftp_mtx);
 } else {




  if (provider->ftp_rcount == 0 && !provider->ftp_marked)
   whack = provider->ftp_marked = 1;
  mutex_exit(&provider->ftp_mtx);
 }

 if (whack)
  fasttrap_pid_cleanup();





 if (!probe->ftp_enabled)
  return;

 probe->ftp_enabled = 0;




 fasttrap_disable_callbacks();
}
