
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookproc {scalar_t__ hp_magic; scalar_t__ hp_pid; } ;


 scalar_t__ HOOKPROC_MAGIC_ALLOCATED ;
 scalar_t__ HOOKPROC_MAGIC_ONLIST ;
 int PJDLOG_ASSERT (int) ;
 int TAILQ_REMOVE (int *,struct hookproc*,int ) ;
 int hookprocs ;
 int hookprocs_lock ;
 int hp_next ;
 int mtx_owned (int *) ;

__attribute__((used)) static void
hook_remove(struct hookproc *hp)
{

 PJDLOG_ASSERT(hp->hp_magic == HOOKPROC_MAGIC_ONLIST);
 PJDLOG_ASSERT(hp->hp_pid > 0);
 PJDLOG_ASSERT(mtx_owned(&hookprocs_lock));

 TAILQ_REMOVE(&hookprocs, hp, hp_next);
 hp->hp_magic = HOOKPROC_MAGIC_ALLOCATED;
}
