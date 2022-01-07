
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int size; int sons_count; scalar_t__ hash_count; int * son; int * hash; int * buffer; } ;
typedef TYPE_1__ lzma_mf ;
typedef int lzma_lz_options ;
typedef int lzma_coder ;


 int UINT64_MAX ;
 scalar_t__ lz_encoder_prepare (TYPE_1__*,int *,int const*) ;

extern uint64_t
lzma_lz_encoder_memusage(const lzma_lz_options *lz_options)
{

 lzma_mf mf = {
  .buffer = ((void*)0),
  .hash = ((void*)0),
  .son = ((void*)0),
  .hash_count = 0,
  .sons_count = 0,
 };


 if (lz_encoder_prepare(&mf, ((void*)0), lz_options))
  return UINT64_MAX;


 return ((uint64_t)(mf.hash_count) + mf.sons_count) * sizeof(uint32_t)
   + mf.size + sizeof(lzma_coder);
}
