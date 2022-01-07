
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_4__ {int tq_queue; } ;
typedef TYPE_1__ taskq_t ;
typedef int proc_t ;
typedef int pri_t ;


 int KM_SLEEP ;
 int MAX (int,int) ;
 int M_WAITOK ;
 int TASKQ_THREADS_CPU_PCT ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int mp_ncpus ;
 int taskqueue_create (char const*,int ,int ,int *) ;
 int taskqueue_start_threads_in_proc (int *,int,int ,int *,char*,char const*) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static taskq_t *
taskq_create_impl(const char *name, int nthreads, pri_t pri, proc_t *proc,
    uint_t flags)
{
 taskq_t *tq;

 if ((flags & TASKQ_THREADS_CPU_PCT) != 0)
  nthreads = MAX((mp_ncpus * nthreads) / 100, 1);

 tq = kmem_alloc(sizeof(*tq), KM_SLEEP);
 tq->tq_queue = taskqueue_create(name, M_WAITOK, taskqueue_thread_enqueue,
     &tq->tq_queue);
 (void) taskqueue_start_threads_in_proc(&tq->tq_queue, nthreads, pri,
     proc, "%s", name);

 return ((taskq_t *)tq);
}
