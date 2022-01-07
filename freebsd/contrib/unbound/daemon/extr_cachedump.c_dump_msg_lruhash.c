
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * now; } ;
struct worker {TYPE_1__ env; int scratchpad; } ;
struct reply_info {int dummy; } ;
struct query_info {int dummy; } ;
struct lruhash_entry {int lock; struct lruhash_entry* lru_next; } ;
struct lruhash {struct lruhash_entry* lru_start; } ;
typedef int RES ;


 int copy_msg (int ,struct lruhash_entry*,struct query_info**,struct reply_info**) ;
 int dump_msg (int *,struct query_info*,struct reply_info*,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int regional_free_all (int ) ;

__attribute__((used)) static int
dump_msg_lruhash(RES* ssl, struct worker* worker, struct lruhash* h)
{
 struct lruhash_entry* e;
 struct query_info* k;
 struct reply_info* d;



 for(e=h->lru_start; e; e = e->lru_next) {
  regional_free_all(worker->scratchpad);
  lock_rw_rdlock(&e->lock);

  if(!copy_msg(worker->scratchpad, e, &k, &d)) {
   lock_rw_unlock(&e->lock);
   return 0;
  }
  lock_rw_unlock(&e->lock);


  if(!dump_msg(ssl, k, d, *worker->env.now)) {
   return 0;
  }
 }
 return 1;
}
