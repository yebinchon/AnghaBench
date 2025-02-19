
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union idx_entry {int next; void* item; } ;
struct indexer {int free_list; union idx_entry** array; } ;


 size_t idx_array_index (int) ;
 size_t idx_entry_index (int) ;

void *idx_remove(struct indexer *idx, int index)
{
 union idx_entry *entry;
 void *item;

 entry = idx->array[idx_array_index(index)];
 item = entry[idx_entry_index(index)].item;
 entry[idx_entry_index(index)].next = idx->free_list;
 idx->free_list = index;
 return item;
}
