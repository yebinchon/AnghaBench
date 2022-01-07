
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rrset_ref {int id; TYPE_2__* key; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
typedef int hashvalue_type ;
struct TYPE_3__ {int lock; int hash; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;


 size_t RR_COUNT_MAX ;
 int lock_rw_unlock (int *) ;
 int log_warn (char*) ;
 scalar_t__ regional_alloc (struct regional*,int) ;
 int rrset_cache_touch (struct rrset_cache*,TYPE_2__*,int ,int ) ;

void
rrset_array_unlock_touch(struct rrset_cache* r, struct regional* scratch,
 struct rrset_ref* ref, size_t count)
{
 hashvalue_type* h;
 size_t i;
 if(count > RR_COUNT_MAX || !(h = (hashvalue_type*)regional_alloc(
  scratch, sizeof(hashvalue_type)*count))) {
  log_warn("rrset LRU: memory allocation failed");
  h = ((void*)0);
 } else
  for(i=0; i<count; i++)
   h[i] = ref[i].key->entry.hash;

 for(i=0; i<count; i++) {
  if(i>0 && ref[i].key == ref[i-1].key)
   continue;
  lock_rw_unlock(&ref[i].key->entry.lock);
 }
 if(h) {

  for(i=0; i<count; i++) {
   if(i>0 && ref[i].key == ref[i-1].key)
    continue;
   rrset_cache_touch(r, ref[i].key, h[i], ref[i].id);
  }
 }
}
