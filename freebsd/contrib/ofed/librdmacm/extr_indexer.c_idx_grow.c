
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union idx_entry {int next; } ;
struct indexer {size_t size; int free_list; union idx_entry** array; } ;


 int ENOMEM ;
 size_t IDX_ARRAY_SIZE ;
 int IDX_ENTRY_BITS ;
 int IDX_ENTRY_SIZE ;
 union idx_entry* calloc (int,int) ;
 int errno ;

__attribute__((used)) static int idx_grow(struct indexer *idx)
{
 union idx_entry *entry;
 int i, start_index;

 if (idx->size >= IDX_ARRAY_SIZE)
  goto nomem;

 idx->array[idx->size] = calloc(IDX_ENTRY_SIZE, sizeof(union idx_entry));
 if (!idx->array[idx->size])
  goto nomem;

 entry = idx->array[idx->size];
 start_index = idx->size << IDX_ENTRY_BITS;
 entry[IDX_ENTRY_SIZE - 1].next = idx->free_list;

 for (i = IDX_ENTRY_SIZE - 2; i >= 0; i--)
  entry[i].next = start_index + i + 1;


 if (start_index == 0)
  start_index++;
 idx->free_list = start_index;
 idx->size++;
 return start_index;

nomem:
 errno = ENOMEM;
 return -1;
}
