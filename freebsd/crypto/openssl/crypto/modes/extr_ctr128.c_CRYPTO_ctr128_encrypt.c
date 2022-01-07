
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* block128_f ) (unsigned char*,unsigned char*,void const*) ;


 int ctr128_inc (unsigned char*) ;
 int ctr128_inc_aligned (unsigned char*) ;
 int stub1 (unsigned char*,unsigned char*,void const*) ;
 int stub2 (unsigned char*,unsigned char*,void const*) ;
 int stub3 (unsigned char*,unsigned char*,void const*) ;

void CRYPTO_ctr128_encrypt(const unsigned char *in, unsigned char *out,
                           size_t len, const void *key,
                           unsigned char ivec[16],
                           unsigned char ecount_buf[16], unsigned int *num,
                           block128_f block)
{
    unsigned int n;
    size_t l = 0;

    n = *num;


    if (16 % sizeof(size_t) == 0) {
        do {
            while (n && len) {
                *(out++) = *(in++) ^ ecount_buf[n];
                --len;
                n = (n + 1) % 16;
            }






            while (len >= 16) {
                (*block) (ivec, ecount_buf, key);
                ctr128_inc_aligned(ivec);
                for (n = 0; n < 16; n += sizeof(size_t))
                    *(size_t *)(out + n) =
                        *(size_t *)(in + n) ^ *(size_t *)(ecount_buf + n);
                len -= 16;
                out += 16;
                in += 16;
                n = 0;
            }
            if (len) {
                (*block) (ivec, ecount_buf, key);
                ctr128_inc_aligned(ivec);
                while (len--) {
                    out[n] = in[n] ^ ecount_buf[n];
                    ++n;
                }
            }
            *num = n;
            return;
        } while (0);
    }


    while (l < len) {
        if (n == 0) {
            (*block) (ivec, ecount_buf, key);
            ctr128_inc(ivec);
        }
        out[l] = in[l] ^ ecount_buf[n];
        ++l;
        n = (n + 1) % 16;
    }

    *num = n;
}
