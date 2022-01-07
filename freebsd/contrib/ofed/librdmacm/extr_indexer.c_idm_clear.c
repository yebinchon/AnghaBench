
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_map {void*** array; } ;


 size_t idx_array_index (int) ;
 size_t idx_entry_index (int) ;

void *idm_clear(struct index_map *idm, int index)
{
 void **entry;
 void *item;

 entry = idm->array[idx_array_index(index)];
 item = entry[idx_entry_index(index)];
 entry[idx_entry_index(index)] = ((void*)0);
 return item;
}
