
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ (* block_size ) (int ) ;} ;
typedef TYPE_1__ lzma_filter_encoder ;
struct TYPE_6__ {scalar_t__ id; int options; } ;
typedef TYPE_2__ lzma_filter ;


 scalar_t__ LZMA_VLI_UNKNOWN ;
 TYPE_1__* encoder_find (scalar_t__) ;
 scalar_t__ stub1 (int ) ;

extern uint64_t
lzma_mt_block_size(const lzma_filter *filters)
{
 uint64_t max = 0;

 for (size_t i = 0; filters[i].id != LZMA_VLI_UNKNOWN; ++i) {
  const lzma_filter_encoder *const fe
    = encoder_find(filters[i].id);
  if (fe->block_size != ((void*)0)) {
   const uint64_t size
     = fe->block_size(filters[i].options);
   if (size == 0)
    return 0;

   if (size > max)
    max = size;
  }
 }

 return max;
}
