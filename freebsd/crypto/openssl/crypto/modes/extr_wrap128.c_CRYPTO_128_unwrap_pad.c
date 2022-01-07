
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* block128_f ) (unsigned char const*,unsigned char*,void*) ;


 size_t CRYPTO128_WRAP_MAX ;
 scalar_t__ CRYPTO_memcmp (unsigned char*,unsigned char const*,size_t) ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 size_t crypto_128_unwrap_raw (void*,unsigned char*,unsigned char*,unsigned char const*,size_t,int (*) (unsigned char const*,unsigned char*,void*)) ;
 unsigned char* default_aiv ;
 int memcpy (unsigned char*,unsigned char*,int) ;

size_t CRYPTO_128_unwrap_pad(void *key, const unsigned char *icv,
                             unsigned char *out,
                             const unsigned char *in, size_t inlen,
                             block128_f block)
{

    size_t n = inlen / 8 - 1;
    size_t padded_len;
    size_t padding_len;
    size_t ptext_len;

    unsigned char aiv[8];
    static unsigned char zeros[8] = { 0x0 };
    size_t ret;


    if ((inlen & 0x7) != 0 || inlen < 16 || inlen >= CRYPTO128_WRAP_MAX)
        return 0;

    if (inlen == 16) {






        unsigned char buff[16];

        block(in, buff, key);
        memcpy(aiv, buff, 8);

        memcpy(out, buff + 8, 8);
        padded_len = 8;
        OPENSSL_cleanse(buff, inlen);
    } else {
        padded_len = inlen - 8;
        ret = crypto_128_unwrap_raw(key, aiv, out, in, inlen, block);
        if (padded_len != ret) {
            OPENSSL_cleanse(out, inlen);
            return 0;
        }
    }






    if ((!icv && CRYPTO_memcmp(aiv, default_aiv, 4))
        || (icv && CRYPTO_memcmp(aiv, icv, 4))) {
        OPENSSL_cleanse(out, inlen);
        return 0;
    }






    ptext_len = ((unsigned int)aiv[4] << 24)
                | ((unsigned int)aiv[5] << 16)
                | ((unsigned int)aiv[6] << 8)
                | (unsigned int)aiv[7];
    if (8 * (n - 1) >= ptext_len || ptext_len > 8 * n) {
        OPENSSL_cleanse(out, inlen);
        return 0;
    }





    padding_len = padded_len - ptext_len;
    if (CRYPTO_memcmp(out + ptext_len, zeros, padding_len) != 0) {
        OPENSSL_cleanse(out, inlen);
        return 0;
    }


    return ptext_len;
}
