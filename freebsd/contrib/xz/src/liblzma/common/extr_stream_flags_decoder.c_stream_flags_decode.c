
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int check; scalar_t__ version; } ;
typedef TYPE_1__ lzma_stream_flags ;



__attribute__((used)) static bool
stream_flags_decode(lzma_stream_flags *options, const uint8_t *in)
{

 if (in[0] != 0x00 || (in[1] & 0xF0))
  return 1;

 options->version = 0;
 options->check = in[1] & 0x0F;

 return 0;
}
