
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_6__ {scalar_t__ ftp_pid; int ftp_retired; scalar_t__ ftp_mcount; int ftp_marked; int ftp_mtx; int ftp_provid; TYPE_1__* ftp_proc; int ftp_name; struct TYPE_6__* ftp_next; } ;
typedef TYPE_2__ fasttrap_provider_t ;
struct TYPE_7__ {int ftb_mtx; TYPE_2__* ftb_data; } ;
typedef TYPE_3__ fasttrap_bucket_t ;
typedef int dtrace_provider_id_t ;
struct TYPE_8__ {TYPE_3__* fth_table; } ;
struct TYPE_5__ {scalar_t__ ftpc_acount; scalar_t__ ftpc_rcount; } ;


 int ASSERT (int) ;
 size_t FASTTRAP_PROVS_INDEX (scalar_t__,char const*) ;
 int atomic_dec_64 (scalar_t__*) ;
 int dtrace_invalidate (int ) ;
 int fasttrap_pid_cleanup () ;
 TYPE_4__ fasttrap_provs ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
fasttrap_provider_retire(pid_t pid, const char *name, int mprov)
{
 fasttrap_provider_t *fp;
 fasttrap_bucket_t *bucket;
 dtrace_provider_id_t provid;

 ASSERT(strlen(name) < sizeof (fp->ftp_name));

 bucket = &fasttrap_provs.fth_table[FASTTRAP_PROVS_INDEX(pid, name)];
 mutex_enter(&bucket->ftb_mtx);

 for (fp = bucket->ftb_data; fp != ((void*)0); fp = fp->ftp_next) {
  if (fp->ftp_pid == pid && strcmp(fp->ftp_name, name) == 0 &&
      !fp->ftp_retired)
   break;
 }

 if (fp == ((void*)0)) {
  mutex_exit(&bucket->ftb_mtx);
  return;
 }

 mutex_enter(&fp->ftp_mtx);
 ASSERT(!mprov || fp->ftp_mcount > 0);
 if (mprov && --fp->ftp_mcount != 0) {
  mutex_exit(&fp->ftp_mtx);
  mutex_exit(&bucket->ftb_mtx);
  return;
 }
 atomic_dec_64(&fp->ftp_proc->ftpc_acount);
 ASSERT(fp->ftp_proc->ftpc_acount < fp->ftp_proc->ftpc_rcount);

 fp->ftp_retired = 1;
 fp->ftp_marked = 1;
 provid = fp->ftp_provid;
 mutex_exit(&fp->ftp_mtx);






 dtrace_invalidate(provid);

 mutex_exit(&bucket->ftb_mtx);

 fasttrap_pid_cleanup();
}
