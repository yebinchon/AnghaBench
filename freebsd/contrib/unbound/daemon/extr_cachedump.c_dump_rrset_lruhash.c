
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct packed_rrset_data {int dummy; } ;
struct lruhash_entry {int lock; scalar_t__ data; scalar_t__ key; struct lruhash_entry* lru_next; } ;
struct lruhash {struct lruhash_entry* lru_start; } ;
typedef int RES ;


 int dump_rrset (int *,struct ub_packed_rrset_key*,struct packed_rrset_data*,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;

__attribute__((used)) static int
dump_rrset_lruhash(RES* ssl, struct lruhash* h, time_t now)
{
 struct lruhash_entry* e;


 for(e=h->lru_start; e; e = e->lru_next) {
  lock_rw_rdlock(&e->lock);
  if(!dump_rrset(ssl, (struct ub_packed_rrset_key*)e->key,
   (struct packed_rrset_data*)e->data, now)) {
   lock_rw_unlock(&e->lock);
   return 0;
  }
  lock_rw_unlock(&e->lock);
 }
 return 1;
}
