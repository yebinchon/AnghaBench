
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_map {scalar_t__* array; } ;


 int IDX_MAX_INDEX ;
 void* idm_at (struct index_map*,int) ;
 size_t idx_array_index (int) ;

__attribute__((used)) static inline void *idm_lookup(struct index_map *idm, int index)
{
 return ((index <= IDX_MAX_INDEX) && idm->array[idx_array_index(index)]) ?
  idm_at(idm, index) : ((void*)0);
}
