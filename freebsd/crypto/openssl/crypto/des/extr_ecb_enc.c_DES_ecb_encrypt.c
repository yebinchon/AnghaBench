
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char* const_DES_cblock ;
typedef int DES_key_schedule ;
typedef unsigned char* DES_cblock ;
typedef scalar_t__ DES_LONG ;


 int DES_encrypt1 (scalar_t__*,int *,int) ;
 int c2l (unsigned char const*,scalar_t__) ;
 int l2c (scalar_t__,unsigned char*) ;

void DES_ecb_encrypt(const_DES_cblock *input, DES_cblock *output,
                     DES_key_schedule *ks, int enc)
{
    register DES_LONG l;
    DES_LONG ll[2];
    const unsigned char *in = &(*input)[0];
    unsigned char *out = &(*output)[0];

    c2l(in, l);
    ll[0] = l;
    c2l(in, l);
    ll[1] = l;
    DES_encrypt1(ll, ks, enc);
    l = ll[0];
    l2c(l, out);
    l = ll[1];
    l2c(l, out);
    l = ll[0] = ll[1] = 0;
}
