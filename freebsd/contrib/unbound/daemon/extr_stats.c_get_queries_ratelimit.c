
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* cfg; scalar_t__* modinfo; TYPE_2__* mesh; } ;
struct worker {TYPE_3__ env; } ;
struct iter_env {size_t num_queries_ratelimited; int queries_ratelimit_lock; } ;
struct TYPE_5__ {int mods; } ;
struct TYPE_4__ {int stat_cumulative; } ;


 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int modstack_find (int *,char*) ;

__attribute__((used)) static size_t
get_queries_ratelimit(struct worker* worker, int reset)
{
 int m = modstack_find(&worker->env.mesh->mods, "iterator");
 struct iter_env* ie;
 size_t r;
 if(m == -1)
  return 0;
 ie = (struct iter_env*)worker->env.modinfo[m];
 lock_basic_lock(&ie->queries_ratelimit_lock);
 r = ie->num_queries_ratelimited;
 if(reset && !worker->env.cfg->stat_cumulative)
  ie->num_queries_ratelimited = 0;
 lock_basic_unlock(&ie->queries_ratelimit_lock);
 return r;
}
