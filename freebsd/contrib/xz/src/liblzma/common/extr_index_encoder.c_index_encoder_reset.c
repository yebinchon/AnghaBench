
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ crc32; scalar_t__ pos; int const* index; int sequence; int iter; } ;
typedef TYPE_1__ lzma_index_coder ;
typedef int lzma_index ;


 int SEQ_INDICATOR ;
 int lzma_index_iter_init (int *,int const*) ;

__attribute__((used)) static void
index_encoder_reset(lzma_index_coder *coder, const lzma_index *i)
{
 lzma_index_iter_init(&coder->iter, i);

 coder->sequence = SEQ_INDICATOR;
 coder->index = i;
 coder->pos = 0;
 coder->crc32 = 0;

 return;
}
