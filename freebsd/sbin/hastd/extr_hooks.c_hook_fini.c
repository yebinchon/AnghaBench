
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookproc {scalar_t__ hp_magic; scalar_t__ hp_pid; } ;


 scalar_t__ HOOKPROC_MAGIC_ONLIST ;
 int PJDLOG_ASSERT (int) ;
 struct hookproc* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int hook_free (struct hookproc*) ;
 int hook_remove (struct hookproc*) ;
 int hookprocs ;
 int hookprocs_lock ;
 int hooks_initialized ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
hook_fini(void)
{
 struct hookproc *hp;

 PJDLOG_ASSERT(hooks_initialized);

 mtx_lock(&hookprocs_lock);
 while ((hp = TAILQ_FIRST(&hookprocs)) != ((void*)0)) {
  PJDLOG_ASSERT(hp->hp_magic == HOOKPROC_MAGIC_ONLIST);
  PJDLOG_ASSERT(hp->hp_pid > 0);

  hook_remove(hp);
  hook_free(hp);
 }
 mtx_unlock(&hookprocs_lock);

 mtx_destroy(&hookprocs_lock);
 TAILQ_INIT(&hookprocs);
 hooks_initialized = 0;
}
