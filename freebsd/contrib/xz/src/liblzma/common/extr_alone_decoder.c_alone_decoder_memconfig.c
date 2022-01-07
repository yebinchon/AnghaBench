
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int lzma_ret ;
struct TYPE_2__ {scalar_t__ memusage; scalar_t__ memlimit; } ;
typedef TYPE_1__ lzma_alone_coder ;


 int LZMA_MEMLIMIT_ERROR ;
 int LZMA_OK ;

__attribute__((used)) static lzma_ret
alone_decoder_memconfig(void *coder_ptr, uint64_t *memusage,
  uint64_t *old_memlimit, uint64_t new_memlimit)
{
 lzma_alone_coder *coder = coder_ptr;

 *memusage = coder->memusage;
 *old_memlimit = coder->memlimit;

 if (new_memlimit != 0) {
  if (new_memlimit < coder->memusage)
   return LZMA_MEMLIMIT_ERROR;

  coder->memlimit = new_memlimit;
 }

 return LZMA_OK;
}
