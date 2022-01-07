
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sh ;
typedef int DES_key_schedule ;
typedef unsigned char* DES_cblock ;
typedef unsigned int DES_LONG ;


 int DES_ENCRYPT ;
 int DES_encrypt1 (unsigned int*,int *,int ) ;
 int assert (int) ;
 int c2l (unsigned char*,unsigned int) ;
 int c2ln (unsigned char const*,unsigned int,unsigned int,int) ;
 int l2c (unsigned int,unsigned char*) ;
 int l2cn (unsigned int,unsigned int,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;

void DES_cfb_encrypt(const unsigned char *in, unsigned char *out, int numbits,
                     long length, DES_key_schedule *schedule,
                     DES_cblock *ivec, int enc)
{
    register DES_LONG d0, d1, v0, v1;
    register unsigned long l = length;
    register int num = numbits / 8, n = (numbits + 7) / 8, i, rem =
        numbits % 8;
    DES_LONG ti[2];
    unsigned char *iv;

    unsigned char ovec[16];
    if (numbits <= 0 || numbits > 64)
        return;
    iv = &(*ivec)[0];
    c2l(iv, v0);
    c2l(iv, v1);
    if (enc) {
        while (l >= (unsigned long)n) {
            l -= n;
            ti[0] = v0;
            ti[1] = v1;
            DES_encrypt1((DES_LONG *)ti, schedule, DES_ENCRYPT);
            c2ln(in, d0, d1, n);
            in += n;
            d0 ^= ti[0];
            d1 ^= ti[1];
            l2cn(d0, d1, out, n);
            out += n;




            if (numbits == 32) {
                v0 = v1;
                v1 = d0;
            } else if (numbits == 64) {
                v0 = d0;
                v1 = d1;
            } else {

                iv = &ovec[0];
                l2c(v0, iv);
                l2c(v1, iv);
                l2c(d0, iv);
                l2c(d1, iv);



                if (rem == 0)
                    memmove(ovec, ovec + num, 8);
                else
                    for (i = 0; i < 8; ++i)
                        ovec[i] = ovec[i + num] << rem |
                            ovec[i + num + 1] >> (8 - rem);



                iv = &ovec[0];
                c2l(iv, v0);
                c2l(iv, v1);

            }
        }
    } else {
        while (l >= (unsigned long)n) {
            l -= n;
            ti[0] = v0;
            ti[1] = v1;
            DES_encrypt1((DES_LONG *)ti, schedule, DES_ENCRYPT);
            c2ln(in, d0, d1, n);
            in += n;




            if (numbits == 32) {
                v0 = v1;
                v1 = d0;
            } else if (numbits == 64) {
                v0 = d0;
                v1 = d1;
            } else {

                iv = &ovec[0];
                l2c(v0, iv);
                l2c(v1, iv);
                l2c(d0, iv);
                l2c(d1, iv);



                if (rem == 0)
                    memmove(ovec, ovec + num, 8);
                else
                    for (i = 0; i < 8; ++i)
                        ovec[i] = ovec[i + num] << rem |
                            ovec[i + num + 1] >> (8 - rem);



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
