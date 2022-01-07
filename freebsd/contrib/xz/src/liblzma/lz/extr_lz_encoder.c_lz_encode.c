
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ lzma_ret ;
struct TYPE_7__ {scalar_t__ action; scalar_t__ read_pos; scalar_t__ read_limit; } ;
struct TYPE_5__ {scalar_t__ (* code ) (int ,TYPE_3__*,int *,size_t*,size_t) ;int coder; } ;
struct TYPE_6__ {TYPE_3__ mf; TYPE_1__ lz; } ;
typedef TYPE_2__ lzma_coder ;
typedef int lzma_allocator ;
typedef scalar_t__ lzma_action ;


 scalar_t__ const LZMA_OK ;
 scalar_t__ LZMA_RUN ;
 int fill_window (TYPE_2__*,int const*,int const*,size_t*,size_t,scalar_t__) ;
 int return_if_error (int ) ;
 scalar_t__ stub1 (int ,TYPE_3__*,int *,size_t*,size_t) ;

__attribute__((used)) static lzma_ret
lz_encode(void *coder_ptr, const lzma_allocator *allocator,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size,
  uint8_t *restrict out, size_t *restrict out_pos,
  size_t out_size, lzma_action action)
{
 lzma_coder *coder = coder_ptr;

 while (*out_pos < out_size
   && (*in_pos < in_size || action != LZMA_RUN)) {

  if (coder->mf.action == LZMA_RUN && coder->mf.read_pos
    >= coder->mf.read_limit)
   return_if_error(fill_window(coder, allocator,
     in, in_pos, in_size, action));


  const lzma_ret ret = coder->lz.code(coder->lz.coder,
    &coder->mf, out, out_pos, out_size);
  if (ret != LZMA_OK) {



   coder->mf.action = LZMA_RUN;
   return ret;
  }
 }

 return LZMA_OK;
}
