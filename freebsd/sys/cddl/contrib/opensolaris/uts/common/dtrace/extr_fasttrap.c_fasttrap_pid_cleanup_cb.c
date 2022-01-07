
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ftp_marked; scalar_t__ ftp_ccount; scalar_t__ ftp_mcount; scalar_t__ ftp_rcount; struct TYPE_5__* ftp_next; int ftp_provid; int ftp_mtx; int ftp_retired; } ;
typedef TYPE_1__ fasttrap_provider_t ;
struct TYPE_6__ {int ftb_mtx; int ftb_data; } ;
typedef TYPE_2__ fasttrap_bucket_t ;
typedef int dtrace_provider_id_t ;
struct TYPE_7__ {int fth_nent; TYPE_2__* fth_table; } ;


 int EAGAIN ;
 int dtrace_condense (int ) ;
 int dtrace_unregister (int ) ;
 int fasttrap_cleanup_cv ;
 scalar_t__ fasttrap_cleanup_drain ;
 int fasttrap_cleanup_mtx ;
 scalar_t__ fasttrap_cleanup_work ;
 int fasttrap_max ;
 int fasttrap_provider_free (TYPE_1__*) ;
 TYPE_3__ fasttrap_provs ;
 int fasttrap_total ;
 int hz ;
 int kthread_exit () ;
 int mtx_lock (int *) ;
 int mtx_sleep (int *,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int pause (char*,int ) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
fasttrap_pid_cleanup_cb(void *data)
{
 fasttrap_provider_t **fpp, *fp;
 fasttrap_bucket_t *bucket;
 dtrace_provider_id_t provid;
 int i, later = 0, rval;

 mtx_lock(&fasttrap_cleanup_mtx);
 while (!fasttrap_cleanup_drain || later > 0) {
  fasttrap_cleanup_work = 0;
  mtx_unlock(&fasttrap_cleanup_mtx);

  later = 0;







  for (i = 0; i < fasttrap_provs.fth_nent; i++) {
   bucket = &fasttrap_provs.fth_table[i];
   mutex_enter(&bucket->ftb_mtx);
   fpp = (fasttrap_provider_t **)&bucket->ftb_data;

   while ((fp = *fpp) != ((void*)0)) {
    if (!fp->ftp_marked) {
     fpp = &fp->ftp_next;
     continue;
    }

    mutex_enter(&fp->ftp_mtx);







    if (fp->ftp_ccount != 0 ||
        fp->ftp_mcount != 0) {
     mutex_exit(&fp->ftp_mtx);
     fp->ftp_marked = 0;
     continue;
    }

    if (!fp->ftp_retired || fp->ftp_rcount != 0)
     fp->ftp_marked = 0;

    mutex_exit(&fp->ftp_mtx);
    provid = fp->ftp_provid;
    if ((rval = dtrace_unregister(provid)) != 0) {
     if (fasttrap_total > fasttrap_max / 2)
      (void) dtrace_condense(provid);

     if (rval == EAGAIN)
      fp->ftp_marked = 1;

     later += fp->ftp_marked;
     fpp = &fp->ftp_next;
    } else {
     *fpp = fp->ftp_next;
     fasttrap_provider_free(fp);
    }
   }
   mutex_exit(&bucket->ftb_mtx);
  }
  mtx_lock(&fasttrap_cleanup_mtx);
  if (later > 0 || fasttrap_cleanup_work ||
      fasttrap_cleanup_drain) {
   mtx_unlock(&fasttrap_cleanup_mtx);
   pause("ftclean", hz);
   mtx_lock(&fasttrap_cleanup_mtx);
  } else
   mtx_sleep(&fasttrap_cleanup_cv, &fasttrap_cleanup_mtx,
       0, "ftcl", 0);
 }




 wakeup(&fasttrap_cleanup_drain);
 mtx_unlock(&fasttrap_cleanup_mtx);

 kthread_exit();
}
