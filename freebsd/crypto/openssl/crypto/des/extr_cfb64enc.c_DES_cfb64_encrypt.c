
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_key_schedule ;
typedef unsigned char* DES_cblock ;
typedef unsigned char DES_LONG ;


 int DES_ENCRYPT ;
 int DES_encrypt1 (unsigned char*,int *,int ) ;
 int c2l (unsigned char*,unsigned char) ;
 int l2c (unsigned char,unsigned char*) ;

void DES_cfb64_encrypt(const unsigned char *in, unsigned char *out,
                       long length, DES_key_schedule *schedule,
                       DES_cblock *ivec, int *num, int enc)
{
    register DES_LONG v0, v1;
    register long l = length;
    register int n = *num;
    DES_LONG ti[2];
    unsigned char *iv, c, cc;

    iv = &(*ivec)[0];
    if (enc) {
        while (l--) {
            if (n == 0) {
                c2l(iv, v0);
                ti[0] = v0;
                c2l(iv, v1);
                ti[1] = v1;
                DES_encrypt1(ti, schedule, DES_ENCRYPT);
                iv = &(*ivec)[0];
                v0 = ti[0];
                l2c(v0, iv);
                v0 = ti[1];
                l2c(v0, iv);
                iv = &(*ivec)[0];
            }
            c = *(in++) ^ iv[n];
            *(out++) = c;
            iv[n] = c;
            n = (n + 1) & 0x07;
        }
    } else {
        while (l--) {
            if (n == 0) {
                c2l(iv, v0);
                ti[0] = v0;
                c2l(iv, v1);
                ti[1] = v1;
                DES_encrypt1(ti, schedule, DES_ENCRYPT);
                iv = &(*ivec)[0];
                v0 = ti[0];
                l2c(v0, iv);
                v0 = ti[1];
                l2c(v0, iv);
                iv = &(*ivec)[0];
            }
            cc = *(in++);
            c = iv[n];
            iv[n] = cc;
            *(out++) = c ^ cc;
            n = (n + 1) & 0x07;
        }
    }
    v0 = v1 = ti[0] = ti[1] = c = cc = 0;
    *num = n;
}
