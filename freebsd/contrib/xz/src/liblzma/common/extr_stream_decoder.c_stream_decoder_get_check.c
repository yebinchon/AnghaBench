
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int check; } ;
struct TYPE_4__ {TYPE_1__ stream_flags; } ;
typedef TYPE_2__ lzma_stream_coder ;
typedef int lzma_check ;



__attribute__((used)) static lzma_check
stream_decoder_get_check(const void *coder_ptr)
{
 const lzma_stream_coder *coder = coder_ptr;
 return coder->stream_flags.check;
}
