
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookproc {scalar_t__ hp_magic; scalar_t__ hp_pid; } ;
typedef scalar_t__ pid_t ;


 scalar_t__ HOOKPROC_MAGIC_ALLOCATED ;
 scalar_t__ HOOKPROC_MAGIC_ONLIST ;
 int PJDLOG_ASSERT (int) ;
 int TAILQ_INSERT_TAIL (int *,struct hookproc*,int ) ;
 int hookprocs ;
 int hookprocs_lock ;
 int hp_next ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
hook_add(struct hookproc *hp, pid_t pid)
{

 PJDLOG_ASSERT(hp->hp_magic == HOOKPROC_MAGIC_ALLOCATED);
 PJDLOG_ASSERT(hp->hp_pid == 0);

 hp->hp_pid = pid;
 mtx_lock(&hookprocs_lock);
 hp->hp_magic = HOOKPROC_MAGIC_ONLIST;
 TAILQ_INSERT_TAIL(&hookprocs, hp, hp_next);
 mtx_unlock(&hookprocs_lock);
}
