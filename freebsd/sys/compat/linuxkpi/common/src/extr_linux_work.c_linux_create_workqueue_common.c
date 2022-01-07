
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int exec_mtx; int exec_head; int taskqueue; int draining; } ;


 int MTX_DEF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PWAIT ;
 int TAILQ_INIT (int *) ;
 int atomic_set (int *,int ) ;
 struct workqueue_struct* kmalloc (int,int) ;
 int linux_default_wq_cpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int taskqueue_create (char const*,int,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,char const*) ;
 int taskqueue_thread_enqueue ;

struct workqueue_struct *
linux_create_workqueue_common(const char *name, int cpus)
{
 struct workqueue_struct *wq;




 if (cpus == 0)
  cpus = linux_default_wq_cpus;

 wq = kmalloc(sizeof(*wq), M_WAITOK | M_ZERO);
 wq->taskqueue = taskqueue_create(name, M_WAITOK,
     taskqueue_thread_enqueue, &wq->taskqueue);
 atomic_set(&wq->draining, 0);
 taskqueue_start_threads(&wq->taskqueue, cpus, PWAIT, "%s", name);
 TAILQ_INIT(&wq->exec_head);
 mtx_init(&wq->exec_mtx, "linux_wq_exec", ((void*)0), MTX_DEF);

 return (wq);
}
