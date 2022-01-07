
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union idx_entry {void* item; } ;
struct indexer {union idx_entry** array; } ;


 size_t idx_array_index (int) ;
 size_t idx_entry_index (int) ;

void idx_replace(struct indexer *idx, int index, void *item)
{
 union idx_entry *entry;

 entry = idx->array[idx_array_index(index)];
 entry[idx_entry_index(index)].item = item;
}
