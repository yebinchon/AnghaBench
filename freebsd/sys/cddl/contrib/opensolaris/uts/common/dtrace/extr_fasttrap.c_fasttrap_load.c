
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ulong_t ;
typedef int fasttrap_bucket_t ;
struct TYPE_12__ {int fth_nent; int fth_mask; TYPE_2__* fth_table; } ;
struct TYPE_11__ {int fth_nent; int fth_mask; TYPE_3__* fth_table; } ;
struct TYPE_10__ {int fth_nent; int fth_mask; TYPE_1__* fth_table; } ;
struct TYPE_9__ {int ftb_mtx; } ;
struct TYPE_8__ {int ftb_mtx; } ;
struct TYPE_7__ {int ftb_mtx; } ;


 int ASSERT (int) ;
 int DDI_DEV_T_ANY ;
 int DDI_PROP_DONTPASS ;
 int EVENTHANDLER_PRI_FIRST ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int FASTTRAP_MAX_DEFAULT ;
 int FASTTRAP_PROCS_DEFAULT_SIZE ;
 int FASTTRAP_PROVIDERS_DEFAULT_SIZE ;
 int FASTTRAP_TPOINTS_DEFAULT_SIZE ;
 int GID_WHEEL ;
 scalar_t__ ISP2 (int) ;
 int KM_SLEEP ;
 int MTX_DEF ;
 int MUTEX_DEFAULT ;
 int UID_ROOT ;
 void* ddi_getprop (int ,int ,int ,char*,int) ;
 int destroy_dev (int ) ;
 int devi ;
 int * dtrace_fasttrap_exec ;
 int * dtrace_fasttrap_exit ;
 int * dtrace_fasttrap_fork ;
 int dtrace_meta_register (char*,int *,int *,int *) ;
 int fasttrap_cdev ;
 int fasttrap_cdevsw ;
 int fasttrap_cleanup_mtx ;
 int fasttrap_cleanup_proc ;
 int fasttrap_count_mtx ;
 int fasttrap_exec_exit ;
 int fasttrap_fork ;
 int fasttrap_highbit (int) ;
 void* fasttrap_max ;
 int fasttrap_meta_id ;
 int fasttrap_mops ;
 int fasttrap_pid_cleanup_cb ;
 TYPE_6__ fasttrap_procs ;
 TYPE_5__ fasttrap_provs ;
 int fasttrap_thread_dtor ;
 int fasttrap_thread_dtor_tag ;
 scalar_t__ fasttrap_total ;
 int fasttrap_tp_lock ;
 TYPE_4__ fasttrap_tpoints ;
 int kmem_free (TYPE_3__*,int) ;
 void* kmem_zalloc (int,int ) ;
 int kproc_create (int ,int *,int *,int ,int ,char*) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,char*,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *,char*,int ,int *) ;
 int rm_init (int *,char*) ;
 int thread_dtor ;
 int tpoints_hash_size ;

__attribute__((used)) static int
fasttrap_load(void)
{
 ulong_t nent;
 int i, ret;


        fasttrap_cdev = make_dev(&fasttrap_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
            "dtrace/fasttrap");

 mtx_init(&fasttrap_cleanup_mtx, "fasttrap clean", "dtrace", MTX_DEF);
 mutex_init(&fasttrap_count_mtx, "fasttrap count mtx", MUTEX_DEFAULT,
     ((void*)0));





 fasttrap_total = 0;
 nent = tpoints_hash_size;


 if (nent == 0 || nent > 0x1000000)
  nent = FASTTRAP_TPOINTS_DEFAULT_SIZE;

 tpoints_hash_size = nent;

 if (ISP2(nent))
  fasttrap_tpoints.fth_nent = nent;
 else
  fasttrap_tpoints.fth_nent = 1 << fasttrap_highbit(nent);
 ASSERT(fasttrap_tpoints.fth_nent > 0);
 fasttrap_tpoints.fth_mask = fasttrap_tpoints.fth_nent - 1;
 fasttrap_tpoints.fth_table = kmem_zalloc(fasttrap_tpoints.fth_nent *
     sizeof (fasttrap_bucket_t), KM_SLEEP);

 for (i = 0; i < fasttrap_tpoints.fth_nent; i++)
  mutex_init(&fasttrap_tpoints.fth_table[i].ftb_mtx,
      "tracepoints bucket mtx", MUTEX_DEFAULT, ((void*)0));





 nent = FASTTRAP_PROVIDERS_DEFAULT_SIZE;
 if (ISP2(nent))
  fasttrap_provs.fth_nent = nent;
 else
  fasttrap_provs.fth_nent = 1 << fasttrap_highbit(nent);
 ASSERT(fasttrap_provs.fth_nent > 0);
 fasttrap_provs.fth_mask = fasttrap_provs.fth_nent - 1;
 fasttrap_provs.fth_table = kmem_zalloc(fasttrap_provs.fth_nent *
     sizeof (fasttrap_bucket_t), KM_SLEEP);

 for (i = 0; i < fasttrap_provs.fth_nent; i++)
  mutex_init(&fasttrap_provs.fth_table[i].ftb_mtx,
      "providers bucket mtx", MUTEX_DEFAULT, ((void*)0));


 ret = kproc_create(fasttrap_pid_cleanup_cb, ((void*)0),
     &fasttrap_cleanup_proc, 0, 0, "ftcleanup");
 if (ret != 0) {
  destroy_dev(fasttrap_cdev);

  for (i = 0; i < fasttrap_provs.fth_nent; i++)
   mutex_destroy(&fasttrap_provs.fth_table[i].ftb_mtx);
  for (i = 0; i < fasttrap_tpoints.fth_nent; i++)
   mutex_destroy(&fasttrap_tpoints.fth_table[i].ftb_mtx);

  kmem_free(fasttrap_provs.fth_table, fasttrap_provs.fth_nent *
      sizeof (fasttrap_bucket_t));
  mtx_destroy(&fasttrap_cleanup_mtx);
  mutex_destroy(&fasttrap_count_mtx);
  return (ret);
 }





 nent = FASTTRAP_PROCS_DEFAULT_SIZE;
 if (ISP2(nent))
  fasttrap_procs.fth_nent = nent;
 else
  fasttrap_procs.fth_nent = 1 << fasttrap_highbit(nent);
 ASSERT(fasttrap_procs.fth_nent > 0);
 fasttrap_procs.fth_mask = fasttrap_procs.fth_nent - 1;
 fasttrap_procs.fth_table = kmem_zalloc(fasttrap_procs.fth_nent *
     sizeof (fasttrap_bucket_t), KM_SLEEP);

 for (i = 0; i < fasttrap_procs.fth_nent; i++)
  mutex_init(&fasttrap_procs.fth_table[i].ftb_mtx,
      "processes bucket mtx", MUTEX_DEFAULT, ((void*)0));

 rm_init(&fasttrap_tp_lock, "fasttrap tracepoint");





 fasttrap_thread_dtor_tag = EVENTHANDLER_REGISTER(thread_dtor,
     fasttrap_thread_dtor, ((void*)0), EVENTHANDLER_PRI_FIRST);





 dtrace_fasttrap_fork = &fasttrap_fork;
 dtrace_fasttrap_exit = &fasttrap_exec_exit;
 dtrace_fasttrap_exec = &fasttrap_exec_exit;

 (void) dtrace_meta_register("fasttrap", &fasttrap_mops, ((void*)0),
     &fasttrap_meta_id);

 return (0);
}
