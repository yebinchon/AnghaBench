
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct regional {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ data; } ;
struct key_entry_key {TYPE_1__ entry; } ;
struct key_entry_data {scalar_t__ ttl; } ;
struct key_cache {int dummy; } ;


 scalar_t__ dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 struct key_entry_key* key_cache_search (struct key_cache*,int *,size_t,int ,int ) ;
 struct key_entry_key* key_entry_copy_toregion (struct key_entry_key*,struct regional*) ;
 int lock_rw_unlock (int *) ;

struct key_entry_key*
key_cache_obtain(struct key_cache* kcache, uint8_t* name, size_t namelen,
 uint16_t key_class, struct regional* region, time_t now)
{

 while(1) {
  struct key_entry_key* k = key_cache_search(kcache, name,
   namelen, key_class, 0);
  if(k) {

   struct key_entry_data* d = (struct key_entry_data*)
    k->entry.data;
   if(now <= d->ttl) {

    struct key_entry_key* retkey =
     key_entry_copy_toregion(k, region);
    lock_rw_unlock(&k->entry.lock);
    return retkey;
   }
   lock_rw_unlock(&k->entry.lock);
  }

  if(dname_is_root(name))
   break;
  dname_remove_label(&name, &namelen);
 }
 return ((void*)0);
}
