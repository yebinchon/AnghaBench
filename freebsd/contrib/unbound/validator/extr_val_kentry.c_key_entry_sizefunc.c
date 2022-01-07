
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct key_entry_key {int namelen; TYPE_1__ entry; } ;
struct key_entry_data {char* reason; scalar_t__ algo; scalar_t__ rrset_data; } ;


 scalar_t__ lock_get_mem (int *) ;
 scalar_t__ packed_rrset_sizeof (scalar_t__) ;
 scalar_t__ strlen (char*) ;

size_t
key_entry_sizefunc(void* key, void* data)
{
 struct key_entry_key* kk = (struct key_entry_key*)key;
 struct key_entry_data* kd = (struct key_entry_data*)data;
 size_t s = sizeof(*kk) + kk->namelen;
 s += sizeof(*kd) + lock_get_mem(&kk->entry.lock);
 if(kd->rrset_data)
  s += packed_rrset_sizeof(kd->rrset_data);
 if(kd->reason)
  s += strlen(kd->reason)+1;
 if(kd->algo)
  s += strlen((char*)kd->algo)+1;
 return s;
}
