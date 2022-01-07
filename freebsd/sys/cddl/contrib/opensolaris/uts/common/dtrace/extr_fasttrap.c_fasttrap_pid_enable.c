
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_17__ {scalar_t__ p_stat; int p_flag; int p_lock; TYPE_13__* p_parent; } ;
typedef TYPE_2__ proc_t ;
struct TYPE_18__ {int ftp_enabled; scalar_t__ ftp_id; int ftp_ntps; int ftp_pid; TYPE_1__* ftp_prov; } ;
typedef TYPE_3__ fasttrap_probe_t ;
typedef scalar_t__ dtrace_id_t ;
struct TYPE_16__ {scalar_t__ ftp_retired; int ftp_mtx; int ftp_rcount; } ;
struct TYPE_15__ {int p_flag; } ;


 int ASSERT (int) ;
 int FASTTRAP_ENABLE_FAIL ;
 int FASTTRAP_ENABLE_PARTIAL ;
 int MUTEX_HELD (int *) ;
 int PGET_HOLD ;
 int PGET_NOTWEXIT ;
 int PRELE (TYPE_2__*) ;
 int SFORKING ;
 scalar_t__ SIDL ;
 int SVFORK ;
 int cpu_lock ;
 TYPE_13__* curproc ;
 int fasttrap_disable_callbacks () ;
 int fasttrap_enable_callbacks () ;
 int fasttrap_tracepoint_disable (TYPE_2__*,TYPE_3__*,int) ;
 int fasttrap_tracepoint_enable (TYPE_2__*,TYPE_3__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ pget (int ,int,TYPE_2__**) ;
 int pidlock ;
 TYPE_2__* prfind (int ) ;
 TYPE_2__* sprlock (int ) ;
 int sprlock_proc (TYPE_2__*) ;
 int sprunlock (TYPE_2__*) ;

__attribute__((used)) static void
fasttrap_pid_enable(void *arg, dtrace_id_t id, void *parg)
{
 fasttrap_probe_t *probe = parg;
 proc_t *p = ((void*)0);
 int i, rc;

 ASSERT(probe != ((void*)0));
 ASSERT(!probe->ftp_enabled);
 ASSERT(id == probe->ftp_id);
 mutex_enter(&probe->ftp_prov->ftp_mtx);
 probe->ftp_prov->ftp_rcount++;
 mutex_exit(&probe->ftp_prov->ftp_mtx);






 if (probe->ftp_prov->ftp_retired)
  return;
 if (pget(probe->ftp_pid, PGET_HOLD | PGET_NOTWEXIT, &p) != 0)
  return;







 fasttrap_enable_callbacks();





 for (i = 0; i < probe->ftp_ntps; i++) {
  if ((rc = fasttrap_tracepoint_enable(p, probe, i)) != 0) {





   if (rc == FASTTRAP_ENABLE_FAIL)
    i--;
   else
    ASSERT(rc == FASTTRAP_ENABLE_PARTIAL);





   while (i >= 0) {
    fasttrap_tracepoint_disable(p, probe, i);
    i--;
   }





   PRELE(p);






   fasttrap_disable_callbacks();
   return;
  }
 }




 PRELE(p);


 probe->ftp_enabled = 1;
}
