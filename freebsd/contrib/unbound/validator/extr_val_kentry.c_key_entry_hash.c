
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hash; } ;
struct key_entry_key {TYPE_1__ entry; int name; int key_class; } ;


 int dname_query_hash (int ,int) ;
 int hashlittle (int *,int,int) ;

void
key_entry_hash(struct key_entry_key* kk)
{
 kk->entry.hash = 0x654;
 kk->entry.hash = hashlittle(&kk->key_class, sizeof(kk->key_class),
  kk->entry.hash);
 kk->entry.hash = dname_query_hash(kk->name, kk->entry.hash);
}
