
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct rrset_ref {TYPE_2__* key; void* id; } ;
struct alloc_cache {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ entry; void* id; } ;


 void* alloc_get_id (struct alloc_cache*) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;

__attribute__((used)) static void
rrset_update_id(struct rrset_ref* ref, struct alloc_cache* alloc)
{

 uint64_t newid = alloc_get_id(alloc);

 lock_rw_wrlock(&ref->key->entry.lock);

 if(ref->key->id == ref->id) {
  ref->key->id = newid;
  ref->id = newid;
 }
 lock_rw_unlock(&ref->key->entry.lock);
}
