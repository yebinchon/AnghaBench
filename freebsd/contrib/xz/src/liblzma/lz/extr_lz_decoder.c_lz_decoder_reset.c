
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; int size; int need_reset; scalar_t__ full; scalar_t__ pos; } ;
struct TYPE_5__ {TYPE_1__ dict; } ;
typedef TYPE_2__ lzma_coder ;



__attribute__((used)) static void
lz_decoder_reset(lzma_coder *coder)
{
 coder->dict.pos = 0;
 coder->dict.full = 0;
 coder->dict.buf[coder->dict.size - 1] = '\0';
 coder->dict.need_reset = 0;
 return;
}
