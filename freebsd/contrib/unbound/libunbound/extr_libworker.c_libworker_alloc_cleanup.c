
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct libworker {TYPE_2__* env; } ;
struct TYPE_4__ {int * msg_cache; TYPE_1__* rrset_cache; } ;
struct TYPE_3__ {int table; } ;


 int slabhash_clear (int *) ;

void libworker_alloc_cleanup(void* arg)
{
 struct libworker* w = (struct libworker*)arg;
 slabhash_clear(&w->env->rrset_cache->table);
        slabhash_clear(w->env->msg_cache);
}
