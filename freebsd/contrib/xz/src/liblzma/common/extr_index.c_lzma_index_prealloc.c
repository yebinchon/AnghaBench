
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ lzma_vli ;
struct TYPE_3__ {size_t prealloc; } ;
typedef TYPE_1__ lzma_index ;


 scalar_t__ PREALLOC_MAX ;

extern void
lzma_index_prealloc(lzma_index *i, lzma_vli records)
{
 if (records > PREALLOC_MAX)
  records = PREALLOC_MAX;

 i->prealloc = (size_t)(records);
 return;
}
