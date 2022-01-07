
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * msg_cache; TYPE_1__* rrset_cache; } ;
struct worker {TYPE_2__ env; } ;
struct TYPE_3__ {int table; } ;


 int slabhash_clear (int *) ;

void
worker_alloc_cleanup(void* arg)
{
 struct worker* worker = (struct worker*)arg;
 slabhash_clear(&worker->env.rrset_cache->table);
 slabhash_clear(worker->env.msg_cache);
}
