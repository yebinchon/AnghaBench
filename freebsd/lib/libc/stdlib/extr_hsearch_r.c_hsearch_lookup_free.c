
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct __hsearch {size_t index_mask; TYPE_1__* entries; } ;
struct TYPE_3__ {int * key; } ;
typedef TYPE_1__ ENTRY ;



__attribute__((used)) static ENTRY *
hsearch_lookup_free(struct __hsearch *hsearch, size_t hash)
{
 size_t index, i;

 for (index = hash, i = 0;; index += ++i) {
  ENTRY *entry = &hsearch->entries[index & hsearch->index_mask];
  if (entry->key == ((void*)0))
   return (entry);
 }
}
