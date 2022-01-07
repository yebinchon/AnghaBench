
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PJDLOG_ASSERT (int) ;
 int TAILQ_INIT (int *) ;
 int hookprocs ;
 int hookprocs_lock ;
 int hooks_initialized ;
 int mtx_init (int *) ;

void
hook_init(void)
{

 PJDLOG_ASSERT(!hooks_initialized);

 mtx_init(&hookprocs_lock);
 TAILQ_INIT(&hookprocs);
 hooks_initialized = 1;
}
