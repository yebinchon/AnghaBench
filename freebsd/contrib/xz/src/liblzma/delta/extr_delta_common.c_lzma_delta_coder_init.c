
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_10__ {int dist; } ;
typedef TYPE_1__ lzma_options_delta ;
struct TYPE_11__ {int * end; TYPE_4__* coder; } ;
typedef TYPE_2__ lzma_next_coder ;
struct TYPE_12__ {TYPE_1__* options; } ;
typedef TYPE_3__ lzma_filter_info ;
struct TYPE_13__ {int next; int history; scalar_t__ pos; int distance; } ;
typedef TYPE_4__ lzma_delta_coder ;
typedef int lzma_allocator ;


 int LZMA_DELTA_DIST_MAX ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OPTIONS_ERROR ;
 scalar_t__ UINT64_MAX ;
 int delta_coder_end ;
 TYPE_4__* lzma_alloc (int,int const*) ;
 scalar_t__ lzma_delta_coder_memusage (TYPE_1__*) ;
 int lzma_next_filter_init (int *,int const*,TYPE_3__ const*) ;
 int memzero (int ,int ) ;

extern lzma_ret
lzma_delta_coder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  const lzma_filter_info *filters)
{

 lzma_delta_coder *coder = next->coder;
 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_delta_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->coder = coder;


  next->end = &delta_coder_end;
  coder->next = LZMA_NEXT_CODER_INIT;
 }


 if (lzma_delta_coder_memusage(filters[0].options) == UINT64_MAX)
  return LZMA_OPTIONS_ERROR;


 const lzma_options_delta *opt = filters[0].options;
 coder->distance = opt->dist;


 coder->pos = 0;
 memzero(coder->history, LZMA_DELTA_DIST_MAX);


 return lzma_next_filter_init(&coder->next, allocator, filters + 1);
}
