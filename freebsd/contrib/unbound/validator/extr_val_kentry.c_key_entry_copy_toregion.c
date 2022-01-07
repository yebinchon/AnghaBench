
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct regional {int dummy; } ;
struct TYPE_2__ {struct key_entry_key* data; struct key_entry_key* key; } ;
struct key_entry_key {int namelen; char* reason; TYPE_1__ entry; int * algo; struct key_entry_key* rrset_data; struct key_entry_key* name; } ;
struct key_entry_data {int namelen; char* reason; TYPE_1__ entry; int * algo; struct key_entry_data* rrset_data; struct key_entry_data* name; } ;


 int packed_rrset_ptr_fixup (struct key_entry_key*) ;
 int packed_rrset_sizeof (struct key_entry_key*) ;
 void* regional_alloc_init (struct regional*,struct key_entry_key*,int) ;
 char* regional_strdup (struct regional*,char*) ;

struct key_entry_key*
key_entry_copy_toregion(struct key_entry_key* kkey, struct regional* region)
{
 struct key_entry_key* newk;
 newk = regional_alloc_init(region, kkey, sizeof(*kkey));
 if(!newk)
  return ((void*)0);
 newk->name = regional_alloc_init(region, kkey->name, kkey->namelen);
 if(!newk->name)
  return ((void*)0);
 newk->entry.key = newk;
 if(newk->entry.data) {

  struct key_entry_data *d = (struct key_entry_data*)
   kkey->entry.data;
  struct key_entry_data *newd;
  newd = regional_alloc_init(region, d, sizeof(*d));
  if(!newd)
   return ((void*)0);

  if(d->rrset_data) {
   newd->rrset_data = regional_alloc_init(region,
    d->rrset_data,
    packed_rrset_sizeof(d->rrset_data));
   if(!newd->rrset_data)
    return ((void*)0);
   packed_rrset_ptr_fixup(newd->rrset_data);
  }
  if(d->reason) {
   newd->reason = regional_strdup(region, d->reason);
   if(!newd->reason)
    return ((void*)0);
  }
  if(d->algo) {
   newd->algo = (uint8_t*)regional_strdup(region,
    (char*)d->algo);
   if(!newd->algo)
    return ((void*)0);
  }
  newk->entry.data = newd;
 }
 return newk;
}
