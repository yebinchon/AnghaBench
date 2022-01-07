
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlock {scalar_t__ rls_magic; int rls_locks; } ;
struct rangelocks {scalar_t__ rls_magic; int rls_locks; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ RANGELOCKS_MAGIC ;
 struct rlock* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct rlock*,int ) ;
 int free (struct rlock*) ;
 int rl_next ;

void
rangelock_free(struct rangelocks *rls)
{
 struct rlock *rl;

 PJDLOG_ASSERT(rls->rls_magic == RANGELOCKS_MAGIC);

 rls->rls_magic = 0;

 while ((rl = TAILQ_FIRST(&rls->rls_locks)) != ((void*)0)) {
  TAILQ_REMOVE(&rls->rls_locks, rl, rl_next);
  free(rl);
 }
 free(rls);
}
