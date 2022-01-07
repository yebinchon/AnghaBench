
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* onetimeauth ) (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*) ;} ;


 TYPE_1__* implementation ;
 int stub1 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*) ;

int
crypto_onetimeauth_poly1305(unsigned char *out, const unsigned char *in,
                            unsigned long long inlen, const unsigned char *k)
{
    return implementation->onetimeauth(out, in, inlen, k);
}
