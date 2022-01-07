
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XXH64_hash_t ;
struct TYPE_3__ {int xxh; } ;
typedef TYPE_1__ SEQ_stream ;


 int XXH64_digest (int *) ;

XXH64_hash_t SEQ_digest(SEQ_stream const* stream)
{
    return XXH64_digest(&stream->xxh);
}
