
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_ret ;
typedef int lzma_next_coder ;
typedef int lzma_filter_info ;
typedef int lzma_allocator ;


 int arm_code ;
 int lzma_simple_coder_init (int *,int const*,int const*,int *,int ,int,int,int) ;

__attribute__((used)) static lzma_ret
arm_coder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  const lzma_filter_info *filters, bool is_encoder)
{
 return lzma_simple_coder_init(next, allocator, filters,
   &arm_code, 0, 4, 4, is_encoder);
}
