
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lzma_ret ;
struct TYPE_4__ {scalar_t__ start_offset; } ;
typedef TYPE_1__ lzma_options_bcj ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 TYPE_1__* lzma_alloc (int,int const*) ;
 int lzma_free (TYPE_1__*,int const*) ;
 scalar_t__ unaligned_read32le (int const*) ;

extern lzma_ret
lzma_simple_props_decode(void **options, const lzma_allocator *allocator,
  const uint8_t *props, size_t props_size)
{
 if (props_size == 0)
  return LZMA_OK;

 if (props_size != 4)
  return LZMA_OPTIONS_ERROR;

 lzma_options_bcj *opt = lzma_alloc(
   sizeof(lzma_options_bcj), allocator);
 if (opt == ((void*)0))
  return LZMA_MEM_ERROR;

 opt->start_offset = unaligned_read32le(props);


 if (opt->start_offset == 0)
  lzma_free(opt, allocator);
 else
  *options = opt;

 return LZMA_OK;
}
