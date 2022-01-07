
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lzma_vli ;
struct TYPE_2__ {int uncompressed_size; } ;
typedef TYPE_1__ lzma_lzma1_decoder ;



__attribute__((used)) static void
lzma_decoder_uncompressed(void *coder_ptr, lzma_vli uncompressed_size)
{
 lzma_lzma1_decoder *coder = coder_ptr;
 coder->uncompressed_size = uncompressed_size;
}
