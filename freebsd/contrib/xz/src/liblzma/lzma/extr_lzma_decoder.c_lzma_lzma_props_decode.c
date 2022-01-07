
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lzma_ret ;
struct TYPE_5__ {scalar_t__ preset_dict_size; int * preset_dict; int dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 TYPE_1__* lzma_alloc (int,int const*) ;
 int lzma_free (TYPE_1__*,int const*) ;
 scalar_t__ lzma_lzma_lclppb_decode (TYPE_1__*,int const) ;
 int unaligned_read32le (int const*) ;

extern lzma_ret
lzma_lzma_props_decode(void **options, const lzma_allocator *allocator,
  const uint8_t *props, size_t props_size)
{
 if (props_size != 5)
  return LZMA_OPTIONS_ERROR;

 lzma_options_lzma *opt
   = lzma_alloc(sizeof(lzma_options_lzma), allocator);
 if (opt == ((void*)0))
  return LZMA_MEM_ERROR;

 if (lzma_lzma_lclppb_decode(opt, props[0]))
  goto error;




 opt->dict_size = unaligned_read32le(props + 1);

 opt->preset_dict = ((void*)0);
 opt->preset_dict_size = 0;

 *options = opt;

 return LZMA_OK;

error:
 lzma_free(opt, allocator);
 return LZMA_OPTIONS_ERROR;
}
