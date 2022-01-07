
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int seed; int xxh; scalar_t__ state; } ;
typedef TYPE_1__ SEQ_stream ;


 int XXH64_reset (int *,int ) ;

SEQ_stream SEQ_initStream(unsigned seed)
{
    SEQ_stream stream;
    stream.state = 0;
    XXH64_reset(&stream.xxh, 0);
    stream.seed = seed;
    return stream;
}
