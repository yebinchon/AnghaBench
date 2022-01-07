
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* stream_ietf_xor_ic ) (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,int ,unsigned char const*) ;} ;


 TYPE_1__* implementation ;
 int stub1 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,int ,unsigned char const*) ;

int
crypto_stream_chacha20_ietf_xor_ic(unsigned char *c, const unsigned char *m,
                                   unsigned long long mlen,
                                   const unsigned char *n, uint32_t ic,
                                   const unsigned char *k)
{
    return implementation->stream_ietf_xor_ic(c, m, mlen, n, ic, k);
}
