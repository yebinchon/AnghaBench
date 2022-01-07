
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_7__ {scalar_t__ ftpc_pid; scalar_t__ ftpc_acount; scalar_t__ ftpc_rcount; struct TYPE_7__* ftpc_next; int ftpc_mtx; } ;
typedef TYPE_1__ fasttrap_proc_t ;
struct TYPE_8__ {int ftb_mtx; TYPE_1__* ftb_data; } ;
typedef TYPE_2__ fasttrap_bucket_t ;
struct TYPE_9__ {TYPE_2__* fth_table; } ;


 int ASSERT (int) ;
 size_t FASTTRAP_PROCS_INDEX (scalar_t__) ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int atomic_inc_64 (scalar_t__*) ;
 TYPE_5__ fasttrap_procs ;
 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mutex_init (int *,char*,int ,int *) ;

__attribute__((used)) static fasttrap_proc_t *
fasttrap_proc_lookup(pid_t pid)
{
 fasttrap_bucket_t *bucket;
 fasttrap_proc_t *fprc, *new_fprc;


 bucket = &fasttrap_procs.fth_table[FASTTRAP_PROCS_INDEX(pid)];
 mutex_enter(&bucket->ftb_mtx);

 for (fprc = bucket->ftb_data; fprc != ((void*)0); fprc = fprc->ftpc_next) {
  if (fprc->ftpc_pid == pid && fprc->ftpc_acount != 0) {
   mutex_enter(&fprc->ftpc_mtx);
   mutex_exit(&bucket->ftb_mtx);
   fprc->ftpc_rcount++;
   atomic_inc_64(&fprc->ftpc_acount);
   ASSERT(fprc->ftpc_acount <= fprc->ftpc_rcount);
   mutex_exit(&fprc->ftpc_mtx);

   return (fprc);
  }
 }





 mutex_exit(&bucket->ftb_mtx);

 new_fprc = kmem_zalloc(sizeof (fasttrap_proc_t), KM_SLEEP);
 new_fprc->ftpc_pid = pid;
 new_fprc->ftpc_rcount = 1;
 new_fprc->ftpc_acount = 1;

 mutex_init(&new_fprc->ftpc_mtx, "fasttrap proc mtx", MUTEX_DEFAULT,
     ((void*)0));


 mutex_enter(&bucket->ftb_mtx);





 for (fprc = bucket->ftb_data; fprc != ((void*)0); fprc = fprc->ftpc_next) {
  if (fprc->ftpc_pid == pid && fprc->ftpc_acount != 0) {
   mutex_enter(&fprc->ftpc_mtx);
   mutex_exit(&bucket->ftb_mtx);
   fprc->ftpc_rcount++;
   atomic_inc_64(&fprc->ftpc_acount);
   ASSERT(fprc->ftpc_acount <= fprc->ftpc_rcount);
   mutex_exit(&fprc->ftpc_mtx);

   kmem_free(new_fprc, sizeof (fasttrap_proc_t));

   return (fprc);
  }
 }

 new_fprc->ftpc_next = bucket->ftb_data;
 bucket->ftb_data = new_fprc;

 mutex_exit(&bucket->ftb_mtx);

 return (new_fprc);
}
