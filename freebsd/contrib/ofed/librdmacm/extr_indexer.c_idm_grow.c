
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_map {int * array; } ;


 int ENOMEM ;
 int IDX_ENTRY_SIZE ;
 int calloc (int ,int) ;
 int errno ;
 size_t idx_array_index (int) ;

__attribute__((used)) static int idm_grow(struct index_map *idm, int index)
{
 idm->array[idx_array_index(index)] = calloc(IDX_ENTRY_SIZE, sizeof(void *));
 if (!idm->array[idx_array_index(index)])
  goto nomem;

 return index;

nomem:
 errno = ENOMEM;
 return -1;
}
