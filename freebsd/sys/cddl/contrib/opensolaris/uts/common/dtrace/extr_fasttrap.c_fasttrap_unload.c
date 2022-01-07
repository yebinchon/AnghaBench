
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* ftp_next; int ftp_provid; int ftp_mtx; } ;
typedef TYPE_1__ fasttrap_provider_t ;
struct TYPE_9__ {int ftb_mtx; int ftb_data; } ;
typedef TYPE_2__ fasttrap_bucket_t ;
struct TYPE_12__ {int fth_nent; TYPE_2__* fth_table; } ;
struct TYPE_11__ {int fth_nent; TYPE_2__* fth_table; } ;
struct TYPE_10__ {int fth_nent; TYPE_2__* fth_table; } ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_METAPROVNONE ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int destroy_dev (int ) ;
 int * dtrace_fasttrap_exec ;
 int * dtrace_fasttrap_exit ;
 int * dtrace_fasttrap_fork ;
 int dtrace_meta_register (char*,int *,int *,scalar_t__*) ;
 scalar_t__ dtrace_meta_unregister (scalar_t__) ;
 scalar_t__ dtrace_unregister (int ) ;
 int fasttrap_cdev ;
 int fasttrap_cleanup_cv ;
 int fasttrap_cleanup_drain ;
 int fasttrap_cleanup_mtx ;
 int * fasttrap_cleanup_proc ;
 int fasttrap_count_mtx ;
 int fasttrap_exec_exit ;
 int fasttrap_fork ;
 scalar_t__ fasttrap_meta_id ;
 int fasttrap_mops ;
 scalar_t__ fasttrap_pid_count ;
 TYPE_7__ fasttrap_procs ;
 int fasttrap_provider_free (TYPE_1__*) ;
 TYPE_5__ fasttrap_provs ;
 int fasttrap_thread_dtor_tag ;
 int fasttrap_tp_lock ;
 TYPE_4__ fasttrap_tpoints ;
 int kmem_free (TYPE_2__*,int) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_sleep (int*,int *,int ,char*,int ) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rm_destroy (int *) ;
 int thread_dtor ;
 int wakeup (int *) ;

__attribute__((used)) static int
fasttrap_unload(void)
{
 int i, fail = 0;
 if (fasttrap_meta_id != DTRACE_METAPROVNONE &&
     dtrace_meta_unregister(fasttrap_meta_id) != 0)
  return (-1);





 for (i = 0; i < fasttrap_provs.fth_nent; i++) {
  fasttrap_provider_t **fpp, *fp;
  fasttrap_bucket_t *bucket = &fasttrap_provs.fth_table[i];

  mutex_enter(&bucket->ftb_mtx);
  fpp = (fasttrap_provider_t **)&bucket->ftb_data;
  while ((fp = *fpp) != ((void*)0)) {







   mutex_enter(&fp->ftp_mtx);
   mutex_exit(&fp->ftp_mtx);

   if (dtrace_unregister(fp->ftp_provid) != 0) {
    fail = 1;
    fpp = &fp->ftp_next;
   } else {
    *fpp = fp->ftp_next;
    fasttrap_provider_free(fp);
   }
  }

  mutex_exit(&bucket->ftb_mtx);
 }

 if (fail) {
  (void) dtrace_meta_register("fasttrap", &fasttrap_mops, ((void*)0),
      &fasttrap_meta_id);

  return (-1);
 }






 ASSERT(dtrace_fasttrap_fork == &fasttrap_fork);
 dtrace_fasttrap_fork = ((void*)0);

 ASSERT(dtrace_fasttrap_exec == &fasttrap_exec_exit);
 dtrace_fasttrap_exec = ((void*)0);

 ASSERT(dtrace_fasttrap_exit == &fasttrap_exec_exit);
 dtrace_fasttrap_exit = ((void*)0);

 mtx_lock(&fasttrap_cleanup_mtx);
 fasttrap_cleanup_drain = 1;

 wakeup(&fasttrap_cleanup_cv);
 mtx_sleep(&fasttrap_cleanup_drain, &fasttrap_cleanup_mtx, 0, "ftcld",
     0);
 fasttrap_cleanup_proc = ((void*)0);
 mtx_destroy(&fasttrap_cleanup_mtx);
 EVENTHANDLER_DEREGISTER(thread_dtor, fasttrap_thread_dtor_tag);

 for (i = 0; i < fasttrap_tpoints.fth_nent; i++)
  mutex_destroy(&fasttrap_tpoints.fth_table[i].ftb_mtx);
 for (i = 0; i < fasttrap_provs.fth_nent; i++)
  mutex_destroy(&fasttrap_provs.fth_table[i].ftb_mtx);
 for (i = 0; i < fasttrap_procs.fth_nent; i++)
  mutex_destroy(&fasttrap_procs.fth_table[i].ftb_mtx);

 kmem_free(fasttrap_tpoints.fth_table,
     fasttrap_tpoints.fth_nent * sizeof (fasttrap_bucket_t));
 fasttrap_tpoints.fth_nent = 0;

 kmem_free(fasttrap_provs.fth_table,
     fasttrap_provs.fth_nent * sizeof (fasttrap_bucket_t));
 fasttrap_provs.fth_nent = 0;

 kmem_free(fasttrap_procs.fth_table,
     fasttrap_procs.fth_nent * sizeof (fasttrap_bucket_t));
 fasttrap_procs.fth_nent = 0;


 destroy_dev(fasttrap_cdev);
 mutex_destroy(&fasttrap_count_mtx);
 rm_destroy(&fasttrap_tp_lock);


 return (0);
}
