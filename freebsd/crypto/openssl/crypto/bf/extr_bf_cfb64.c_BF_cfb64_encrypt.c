
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char BF_LONG ;
typedef int BF_KEY ;


 int BF_encrypt (unsigned char*,int const*) ;
 int l2n (unsigned char,unsigned char*) ;
 int n2l (unsigned char*,unsigned char) ;

void BF_cfb64_encrypt(const unsigned char *in, unsigned char *out,
                      long length, const BF_KEY *schedule,
                      unsigned char *ivec, int *num, int encrypt)
{
    register BF_LONG v0, v1, t;
    register int n = *num;
    register long l = length;
    BF_LONG ti[2];
    unsigned char *iv, c, cc;

    iv = (unsigned char *)ivec;
    if (encrypt) {
        while (l--) {
            if (n == 0) {
                n2l(iv, v0);
                ti[0] = v0;
                n2l(iv, v1);
                ti[1] = v1;
                BF_encrypt((BF_LONG *)ti, schedule);
                iv = (unsigned char *)ivec;
                t = ti[0];
                l2n(t, iv);
                t = ti[1];
                l2n(t, iv);
                iv = (unsigned char *)ivec;
            }
            c = *(in++) ^ iv[n];
            *(out++) = c;
            iv[n] = c;
            n = (n + 1) & 0x07;
        }
    } else {
        while (l--) {
            if (n == 0) {
                n2l(iv, v0);
                ti[0] = v0;
                n2l(iv, v1);
                ti[1] = v1;
                BF_encrypt((BF_LONG *)ti, schedule);
                iv = (unsigned char *)ivec;
                t = ti[0];
                l2n(t, iv);
                t = ti[1];
                l2n(t, iv);
                iv = (unsigned char *)ivec;
            }
            cc = *(in++);
            c = iv[n];
            iv[n] = cc;
            *(out++) = c ^ cc;
            n = (n + 1) & 0x07;
        }
    }
    v0 = v1 = ti[0] = ti[1] = t = c = cc = 0;
    *num = n;
}
