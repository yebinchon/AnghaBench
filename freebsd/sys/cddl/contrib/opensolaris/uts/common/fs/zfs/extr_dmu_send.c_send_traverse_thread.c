
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_thread_arg {int error_code; int q; int flags; int resume; int fromtxg; int * ds; } ;
struct send_block_record {int eos_marker; } ;


 int B_TRUE ;
 int EINTR ;
 int KM_SLEEP ;
 int bqueue_enqueue (int *,struct send_block_record*,int) ;
 struct send_block_record* kmem_zalloc (int,int ) ;
 int send_cb ;
 int thread_exit () ;
 int traverse_dataset_resume (int *,int ,int *,int ,int ,struct send_thread_arg*) ;

__attribute__((used)) static void
send_traverse_thread(void *arg)
{
 struct send_thread_arg *st_arg = arg;
 int err;
 struct send_block_record *data;

 if (st_arg->ds != ((void*)0)) {
  err = traverse_dataset_resume(st_arg->ds,
      st_arg->fromtxg, &st_arg->resume,
      st_arg->flags, send_cb, st_arg);

  if (err != EINTR)
   st_arg->error_code = err;
 }
 data = kmem_zalloc(sizeof (*data), KM_SLEEP);
 data->eos_marker = B_TRUE;
 bqueue_enqueue(&st_arg->q, data, 1);
 thread_exit();
}
