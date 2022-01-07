
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int p_dtrace_probes; } ;
typedef TYPE_1__ proc_t ;
typedef int pid_t ;
struct TYPE_9__ {scalar_t__ ftp_rcount; scalar_t__ ftp_ccount; scalar_t__ ftp_mcount; int ftp_cmtx; int ftp_mtx; TYPE_6__* ftp_proc; int ftp_retired; int ftp_pid; } ;
typedef TYPE_2__ fasttrap_provider_t ;
struct TYPE_10__ {scalar_t__ ftpc_acount; scalar_t__ ftpc_rcount; } ;


 int ASSERT (int) ;
 int PROC_UNLOCK (TYPE_1__*) ;
 int atomic_dec_64 (scalar_t__*) ;
 int fasttrap_proc_release (TYPE_6__*) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;
 TYPE_1__* pfind (int ) ;

__attribute__((used)) static void
fasttrap_provider_free(fasttrap_provider_t *provider)
{
 pid_t pid = provider->ftp_pid;
 proc_t *p;





 ASSERT(provider->ftp_rcount == 0);
 ASSERT(provider->ftp_ccount == 0);
 ASSERT(provider->ftp_mcount == 0);





 if (!provider->ftp_retired) {
  atomic_dec_64(&provider->ftp_proc->ftpc_acount);
  ASSERT(provider->ftp_proc->ftpc_acount <
      provider->ftp_proc->ftpc_rcount);
 }

 fasttrap_proc_release(provider->ftp_proc);


 mutex_destroy(&provider->ftp_mtx);
 mutex_destroy(&provider->ftp_cmtx);

 kmem_free(provider, sizeof (fasttrap_provider_t));
 if ((p = pfind(pid)) == ((void*)0)) {
  return;
 }

 p->p_dtrace_probes--;

 PROC_UNLOCK(p);

}
