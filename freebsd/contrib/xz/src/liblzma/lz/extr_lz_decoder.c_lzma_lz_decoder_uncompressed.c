
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lzma_vli ;
struct TYPE_3__ {int coder; int (* set_uncompressed ) (int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ lz; } ;
typedef TYPE_2__ lzma_coder ;


 int stub1 (int ,int ) ;

extern void
lzma_lz_decoder_uncompressed(void *coder_ptr, lzma_vli uncompressed_size)
{
 lzma_coder *coder = coder_ptr;
 coder->lz.set_uncompressed(coder->lz.coder, uncompressed_size);
}
