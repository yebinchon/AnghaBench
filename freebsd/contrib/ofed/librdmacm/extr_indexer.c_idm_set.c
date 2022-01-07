
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_map {void*** array; } ;


 int ENOMEM ;
 int IDX_MAX_INDEX ;
 int errno ;
 scalar_t__ idm_grow (struct index_map*,int) ;
 size_t idx_array_index (int) ;
 size_t idx_entry_index (int) ;

int idm_set(struct index_map *idm, int index, void *item)
{
 void **entry;

 if (index > IDX_MAX_INDEX) {
  errno = ENOMEM;
  return -1;
 }

 if (!idm->array[idx_array_index(index)]) {
  if (idm_grow(idm, index) < 0)
   return -1;
 }

 entry = idm->array[idx_array_index(index)];
 entry[idx_entry_index(index)] = item;
 return index;
}
