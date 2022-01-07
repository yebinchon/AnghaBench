
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct regional {int dummy; } ;
struct TYPE_2__ {struct key_entry_data* data; struct key_entry_key* key; } ;
struct key_entry_key {size_t namelen; TYPE_1__ entry; int key_class; int name; } ;
struct key_entry_data {int dummy; } ;


 int memset (struct key_entry_key*,int ,int) ;
 void* regional_alloc (struct regional*,int) ;
 int regional_alloc_init (struct regional*,int *,size_t) ;

__attribute__((used)) static int
key_entry_setup(struct regional* region,
 uint8_t* name, size_t namelen, uint16_t dclass,
 struct key_entry_key** k, struct key_entry_data** d)
{
 *k = regional_alloc(region, sizeof(**k));
 if(!*k)
  return 0;
 memset(*k, 0, sizeof(**k));
 (*k)->entry.key = *k;
 (*k)->name = regional_alloc_init(region, name, namelen);
 if(!(*k)->name)
  return 0;
 (*k)->namelen = namelen;
 (*k)->key_class = dclass;
 *d = regional_alloc(region, sizeof(**d));
 if(!*d)
  return 0;
 (*k)->entry.data = *d;
 return 1;
}
