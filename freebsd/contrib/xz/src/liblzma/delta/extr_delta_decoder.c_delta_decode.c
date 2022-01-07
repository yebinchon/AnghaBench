
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const lzma_ret ;
struct TYPE_4__ {int coder; int const (* code ) (int ,int const*,int const*,size_t*,size_t,int *,size_t*,size_t,int ) ;} ;
struct TYPE_5__ {TYPE_1__ next; } ;
typedef TYPE_2__ lzma_delta_coder ;
typedef int lzma_allocator ;
typedef int lzma_action ;


 int assert (int ) ;
 int decode_buffer (TYPE_2__*,int *,size_t) ;
 int const stub1 (int ,int const*,int const*,size_t*,size_t,int *,size_t*,size_t,int ) ;

__attribute__((used)) static lzma_ret
delta_decode(void *coder_ptr, const lzma_allocator *allocator,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size, lzma_action action)
{
 lzma_delta_coder *coder = coder_ptr;

 assert(coder->next.code != ((void*)0));

 const size_t out_start = *out_pos;

 const lzma_ret ret = coder->next.code(coder->next.coder, allocator,
   in, in_pos, in_size, out, out_pos, out_size,
   action);

 decode_buffer(coder, out + out_start, *out_pos - out_start);

 return ret;
}
