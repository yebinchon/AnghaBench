
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct slabhash* msg_cache; } ;
struct worker {TYPE_1__ env; } ;
struct slabhash {size_t size; TYPE_2__** array; } ;
struct TYPE_4__ {int lock; } ;
typedef int RES ;


 int dump_msg_lruhash (int *,struct worker*,TYPE_2__*) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int ssl_printf (int *,char*) ;

__attribute__((used)) static int
dump_msg_cache(RES* ssl, struct worker* worker)
{
 struct slabhash* sh = worker->env.msg_cache;
 size_t slab;
 if(!ssl_printf(ssl, "START_MSG_CACHE\n")) return 0;
 for(slab=0; slab<sh->size; slab++) {
  lock_quick_lock(&sh->array[slab]->lock);
  if(!dump_msg_lruhash(ssl, worker, sh->array[slab])) {
   lock_quick_unlock(&sh->array[slab]->lock);
   return 0;
  }
  lock_quick_unlock(&sh->array[slab]->lock);
 }
 return ssl_printf(ssl, "END_MSG_CACHE\n");
}
