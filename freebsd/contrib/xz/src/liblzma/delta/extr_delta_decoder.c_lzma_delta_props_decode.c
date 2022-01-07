
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int lzma_ret ;
struct TYPE_3__ {scalar_t__ dist; int type; } ;
typedef TYPE_1__ lzma_options_delta ;
typedef int lzma_allocator ;


 int LZMA_DELTA_TYPE_BYTE ;
 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 TYPE_1__* lzma_alloc (int,int const*) ;

extern lzma_ret
lzma_delta_props_decode(void **options, const lzma_allocator *allocator,
  const uint8_t *props, size_t props_size)
{
 if (props_size != 1)
  return LZMA_OPTIONS_ERROR;

 lzma_options_delta *opt
   = lzma_alloc(sizeof(lzma_options_delta), allocator);
 if (opt == ((void*)0))
  return LZMA_MEM_ERROR;

 opt->type = LZMA_DELTA_TYPE_BYTE;
 opt->dist = props[0] + 1;

 *options = opt;

 return LZMA_OK;
}
