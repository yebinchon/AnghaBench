
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* block128_f ) (unsigned char*,unsigned char*,void const*) ;


 int memcpy (unsigned char*,unsigned char*,int) ;
 int stub1 (unsigned char*,unsigned char*,void const*) ;

__attribute__((used)) static void cfbr_encrypt_block(const unsigned char *in, unsigned char *out,
                               int nbits, const void *key,
                               unsigned char ivec[16], int enc,
                               block128_f block)
{
    int n, rem, num;
    unsigned char ovec[16 * 2 + 1];


    if (nbits <= 0 || nbits > 128)
        return;


    memcpy(ovec, ivec, 16);

    (*block) (ivec, ivec, key);
    num = (nbits + 7) / 8;
    if (enc)
        for (n = 0; n < num; ++n)
            out[n] = (ovec[16 + n] = in[n] ^ ivec[n]);
    else
        for (n = 0; n < num; ++n)
            out[n] = (ovec[16 + n] = in[n]) ^ ivec[n];

    rem = nbits % 8;
    num = nbits / 8;
    if (rem == 0)
        memcpy(ivec, ovec + num, 16);
    else
        for (n = 0; n < 16; ++n)
            ivec[n] = ovec[n + num] << rem | ovec[n + num + 1] >> (8 - rem);


}
