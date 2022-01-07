
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rrset_ref {TYPE_2__* key; } ;
struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;


 int lock_rw_unlock (int *) ;

void
rrset_array_unlock(struct rrset_ref* ref, size_t count)
{
 size_t i;
 for(i=0; i<count; i++) {
  if(i>0 && ref[i].key == ref[i-1].key)
   continue;
  lock_rw_unlock(&ref[i].key->entry.lock);
 }
}
