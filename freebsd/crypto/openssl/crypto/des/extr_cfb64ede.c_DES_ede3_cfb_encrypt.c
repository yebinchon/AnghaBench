
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_key_schedule ;
typedef unsigned char* DES_cblock ;
typedef int DES_LONG ;


 int DES_encrypt3 (int *,int *,int *,int *) ;
 int c2l (unsigned char*,int ) ;
 int c2ln (unsigned char const*,int ,int ,unsigned long) ;
 int l2c (int ,unsigned char*) ;
 int l2cn (int ,int ,unsigned char*,unsigned long) ;
 int memmove (unsigned char*,unsigned char*,int) ;

void DES_ede3_cfb_encrypt(const unsigned char *in, unsigned char *out,
                          int numbits, long length, DES_key_schedule *ks1,
                          DES_key_schedule *ks2, DES_key_schedule *ks3,
                          DES_cblock *ivec, int enc)
{
    register DES_LONG d0, d1, v0, v1;
    register unsigned long l = length, n = ((unsigned int)numbits + 7) / 8;
    register int num = numbits, i;
    DES_LONG ti[2];
    unsigned char *iv;
    unsigned char ovec[16];

    if (num > 64)
        return;
    iv = &(*ivec)[0];
    c2l(iv, v0);
    c2l(iv, v1);
    if (enc) {
        while (l >= n) {
            l -= n;
            ti[0] = v0;
            ti[1] = v1;
            DES_encrypt3(ti, ks1, ks2, ks3);
            c2ln(in, d0, d1, n);
            in += n;
            d0 ^= ti[0];
            d1 ^= ti[1];
            l2cn(d0, d1, out, n);
            out += n;




            if (num == 32) {
                v0 = v1;
                v1 = d0;
            } else if (num == 64) {
                v0 = d0;
                v1 = d1;
            } else {
                iv = &ovec[0];
                l2c(v0, iv);
                l2c(v1, iv);
                l2c(d0, iv);
                l2c(d1, iv);

                memmove(ovec, ovec + num / 8, 8 + (num % 8 ? 1 : 0));

                if (num % 8 != 0)
                    for (i = 0; i < 8; ++i) {
                        ovec[i] <<= num % 8;
                        ovec[i] |= ovec[i + 1] >> (8 - num % 8);
                    }
                iv = &ovec[0];
                c2l(iv, v0);
                c2l(iv, v1);
            }
        }
    } else {
        while (l >= n) {
            l -= n;
            ti[0] = v0;
            ti[1] = v1;
            DES_encrypt3(ti, ks1, ks2, ks3);
            c2ln(in, d0, d1, n);
            in += n;




            if (num == 32) {
                v0 = v1;
                v1 = d0;
            } else if (num == 64) {
                v0 = d0;
                v1 = d1;
            } else {
                iv = &ovec[0];
                l2c(v0, iv);
                l2c(v1, iv);
                l2c(d0, iv);
                l2c(d1, iv);

                memmove(ovec, ovec + num / 8, 8 + (num % 8 ? 1 : 0));

                if (num % 8 != 0)
                    for (i = 0; i < 8; ++i) {
                        ovec[i] <<= num % 8;
                        ovec[i] |= ovec[i + 1] >> (8 - num % 8);
                    }
                iv = &ovec[0];
                c2l(iv, v0);
                c2l(iv, v1);
            }
            d0 ^= ti[0];
            d1 ^= ti[1];
            l2cn(d0, d1, out, n);
            out += n;
        }
    }
    iv = &(*ivec)[0];
    l2c(v0, iv);
    l2c(v1, iv);
    v0 = v1 = d0 = d1 = ti[0] = ti[1] = 0;
}
