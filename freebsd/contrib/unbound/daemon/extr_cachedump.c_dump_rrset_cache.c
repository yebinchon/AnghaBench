
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * now; struct rrset_cache* rrset_cache; } ;
struct worker {TYPE_1__ env; } ;
struct TYPE_5__ {size_t size; TYPE_3__** array; } ;
struct rrset_cache {TYPE_2__ table; } ;
struct TYPE_6__ {int lock; } ;
typedef int RES ;


 int dump_rrset_lruhash (int *,TYPE_3__*,int ) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int ssl_printf (int *,char*) ;

__attribute__((used)) static int
dump_rrset_cache(RES* ssl, struct worker* worker)
{
 struct rrset_cache* r = worker->env.rrset_cache;
 size_t slab;
 if(!ssl_printf(ssl, "START_RRSET_CACHE\n")) return 0;
 for(slab=0; slab<r->table.size; slab++) {
  lock_quick_lock(&r->table.array[slab]->lock);
  if(!dump_rrset_lruhash(ssl, r->table.array[slab],
   *worker->env.now)) {
   lock_quick_unlock(&r->table.array[slab]->lock);
   return 0;
  }
  lock_quick_unlock(&r->table.array[slab]->lock);
 }
 return ssl_printf(ssl, "END_RRSET_CACHE\n");
}
