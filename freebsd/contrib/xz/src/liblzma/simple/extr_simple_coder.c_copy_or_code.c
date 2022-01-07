
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ (* code ) (int ,int const*,int const*,size_t*,size_t,int *,size_t*,size_t,scalar_t__) ;int coder; } ;
struct TYPE_5__ {int end_was_reached; scalar_t__ is_encoder; TYPE_1__ next; } ;
typedef TYPE_2__ lzma_simple_coder ;
typedef scalar_t__ lzma_ret ;
typedef int lzma_allocator ;
typedef scalar_t__ lzma_action ;


 scalar_t__ LZMA_FINISH ;
 scalar_t__ const LZMA_OK ;
 scalar_t__ const LZMA_STREAM_END ;
 int assert (int) ;
 int lzma_bufcpy (int const*,size_t*,size_t,int *,size_t*,size_t) ;
 scalar_t__ stub1 (int ,int const*,int const*,size_t*,size_t,int *,size_t*,size_t,scalar_t__) ;

__attribute__((used)) static lzma_ret
copy_or_code(lzma_simple_coder *coder, const lzma_allocator *allocator,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size, lzma_action action)
{
 assert(!coder->end_was_reached);

 if (coder->next.code == ((void*)0)) {
  lzma_bufcpy(in, in_pos, in_size, out, out_pos, out_size);


  if (coder->is_encoder && action == LZMA_FINISH
    && *in_pos == in_size)
   coder->end_was_reached = 1;

 } else {

  const lzma_ret ret = coder->next.code(
    coder->next.coder, allocator,
    in, in_pos, in_size,
    out, out_pos, out_size, action);

  if (ret == LZMA_STREAM_END) {
   assert(!coder->is_encoder
     || action == LZMA_FINISH);
   coder->end_was_reached = 1;

  } else if (ret != LZMA_OK) {
   return ret;
  }
 }

 return LZMA_OK;
}
