
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int lzma_ret ;
struct TYPE_6__ {int * filters; } ;
typedef TYPE_1__ lzma_options_easy ;
struct TYPE_7__ {scalar_t__ flags; scalar_t__ threads; scalar_t__ block_size; int preset; int * filters; } ;
typedef TYPE_2__ lzma_mt ;
typedef int lzma_filter ;


 scalar_t__ BLOCK_SIZE_MAX ;
 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_PROG_ERROR ;
 scalar_t__ LZMA_THREADS_MAX ;
 int assert (int) ;
 scalar_t__ lzma_block_buffer_bound64 (scalar_t__) ;
 scalar_t__ lzma_easy_preset (TYPE_1__*,int ) ;
 scalar_t__ lzma_mt_block_size (int const*) ;

__attribute__((used)) static lzma_ret
get_options(const lzma_mt *options, lzma_options_easy *opt_easy,
  const lzma_filter **filters, uint64_t *block_size,
  uint64_t *outbuf_size_max)
{

 if (options == ((void*)0))
  return LZMA_PROG_ERROR;

 if (options->flags != 0 || options->threads == 0
   || options->threads > LZMA_THREADS_MAX)
  return LZMA_OPTIONS_ERROR;

 if (options->filters != ((void*)0)) {

  *filters = options->filters;
 } else {

  if (lzma_easy_preset(opt_easy, options->preset))
   return LZMA_OPTIONS_ERROR;

  *filters = opt_easy->filters;
 }


 if (options->block_size > 0) {
  if (options->block_size > BLOCK_SIZE_MAX)
   return LZMA_OPTIONS_ERROR;

  *block_size = options->block_size;
 } else {

  *block_size = lzma_mt_block_size(*filters);
  if (*block_size == 0)
   return LZMA_OPTIONS_ERROR;

  assert(*block_size <= BLOCK_SIZE_MAX);
 }




 *outbuf_size_max = lzma_block_buffer_bound64(*block_size);
 if (*outbuf_size_max == 0)
  return LZMA_MEM_ERROR;

 return LZMA_OK;
}
