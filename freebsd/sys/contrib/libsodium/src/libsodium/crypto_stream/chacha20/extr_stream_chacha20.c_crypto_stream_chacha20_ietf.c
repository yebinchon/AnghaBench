
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stream_ietf ) (unsigned char*,unsigned long long,unsigned char const*,unsigned char const*) ;} ;


 TYPE_1__* implementation ;
 int stub1 (unsigned char*,unsigned long long,unsigned char const*,unsigned char const*) ;

int
crypto_stream_chacha20_ietf(unsigned char *c, unsigned long long clen,
                            const unsigned char *n, const unsigned char *k)
{
    return implementation->stream_ietf(c, clen, n, k);
}
