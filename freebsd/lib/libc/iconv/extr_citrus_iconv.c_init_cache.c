
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CI_ENV_MAX_REUSE ;
 int CI_HASH_SIZE ;
 int CI_INITIAL_MAX_REUSE ;
 int TAILQ_INIT (int *) ;
 int UNLOCK (int *) ;
 int WLOCK (int *) ;
 int _CITRUS_HASH_INIT (int *,int ) ;
 int atoi (scalar_t__) ;
 int ci_lock ;
 scalar_t__ getenv (int ) ;
 int isinit ;
 int issetugid () ;
 int shared_max_reuse ;
 int shared_pool ;
 int shared_unused ;

__attribute__((used)) static __inline void
init_cache(void)
{

 WLOCK(&ci_lock);
 if (!isinit) {
  _CITRUS_HASH_INIT(&shared_pool, CI_HASH_SIZE);
  TAILQ_INIT(&shared_unused);
  shared_max_reuse = -1;
  if (!issetugid() && getenv(CI_ENV_MAX_REUSE))
   shared_max_reuse = atoi(getenv(CI_ENV_MAX_REUSE));
  if (shared_max_reuse < 0)
   shared_max_reuse = CI_INITIAL_MAX_REUSE;
  isinit = 1;
 }
 UNLOCK(&ci_lock);
}
