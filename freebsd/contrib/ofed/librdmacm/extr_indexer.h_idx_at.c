
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct indexer {TYPE_1__** array; } ;
struct TYPE_2__ {void* item; } ;


 size_t idx_array_index (int) ;
 int idx_entry_index (int) ;

__attribute__((used)) static inline void *idx_at(struct indexer *idx, int index)
{
 return (idx->array[idx_array_index(index)] + idx_entry_index(index))->item;
}
