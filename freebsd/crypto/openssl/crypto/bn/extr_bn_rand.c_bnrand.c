
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BNRAND_FLAG ;
typedef int BIGNUM ;


 int BN_F_BNRAND ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ANY ;
 int BN_R_BITS_TOO_SMALL ;
 int BN_bin2bn (unsigned char*,int,int *) ;
 int BN_zero (int *) ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ NORMAL ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 scalar_t__ RAND_priv_bytes (unsigned char*,int) ;
 scalar_t__ TESTING ;
 int bn_check_top (int *) ;

__attribute__((used)) static int bnrand(BNRAND_FLAG flag, BIGNUM *rnd, int bits, int top, int bottom)
{
    unsigned char *buf = ((void*)0);
    int b, ret = 0, bit, bytes, mask;

    if (bits == 0) {
        if (top != BN_RAND_TOP_ANY || bottom != BN_RAND_BOTTOM_ANY)
            goto toosmall;
        BN_zero(rnd);
        return 1;
    }
    if (bits < 0 || (bits == 1 && top > 0))
        goto toosmall;

    bytes = (bits + 7) / 8;
    bit = (bits - 1) % 8;
    mask = 0xff << (bit + 1);

    buf = OPENSSL_malloc(bytes);
    if (buf == ((void*)0)) {
        BNerr(BN_F_BNRAND, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    b = flag == NORMAL ? RAND_bytes(buf, bytes) : RAND_priv_bytes(buf, bytes);
    if (b <= 0)
        goto err;

    if (flag == TESTING) {



        int i;
        unsigned char c;

        for (i = 0; i < bytes; i++) {
            if (RAND_bytes(&c, 1) <= 0)
                goto err;
            if (c >= 128 && i > 0)
                buf[i] = buf[i - 1];
            else if (c < 42)
                buf[i] = 0;
            else if (c < 84)
                buf[i] = 255;
        }
    }

    if (top >= 0) {
        if (top) {
            if (bit == 0) {
                buf[0] = 1;
                buf[1] |= 0x80;
            } else {
                buf[0] |= (3 << (bit - 1));
            }
        } else {
            buf[0] |= (1 << bit);
        }
    }
    buf[0] &= ~mask;
    if (bottom)
        buf[bytes - 1] |= 1;
    if (!BN_bin2bn(buf, bytes, rnd))
        goto err;
    ret = 1;
 err:
    OPENSSL_clear_free(buf, bytes);
    bn_check_top(rnd);
    return ret;

toosmall:
    BNerr(BN_F_BNRAND, BN_R_BITS_TOO_SMALL);
    return 0;
}
