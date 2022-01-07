
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rangelocks {int rls_magic; int rls_locks; } ;


 int PJDLOG_ASSERT (int ) ;
 int RANGELOCKS_MAGIC ;
 int TAILQ_INIT (int *) ;
 struct rangelocks* malloc (int) ;

int
rangelock_init(struct rangelocks **rlsp)
{
 struct rangelocks *rls;

 PJDLOG_ASSERT(rlsp != ((void*)0));

 rls = malloc(sizeof(*rls));
 if (rls == ((void*)0))
  return (-1);

 TAILQ_INIT(&rls->rls_locks);

 rls->rls_magic = RANGELOCKS_MAGIC;
 *rlsp = rls;

 return (0);
}
