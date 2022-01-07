
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int i ;
typedef scalar_t__ endianess_t ;
struct TYPE_5__ {size_t dmax; size_t top; int* d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ const BIGNUM ;


 size_t BN_BYTES ;
 int BN_num_bytes (TYPE_1__ const*) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 scalar_t__ big ;
 int bn_correct_top (TYPE_1__ const*) ;

__attribute__((used)) static
int bn2binpad(const BIGNUM *a, unsigned char *to, int tolen, endianess_t endianess)
{
    int n;
    size_t i, lasti, j, atop, mask;
    BN_ULONG l;






    n = BN_num_bytes(a);
    if (tolen == -1) {
        tolen = n;
    } else if (tolen < n) {
        BIGNUM temp = *a;

        bn_correct_top(&temp);
        n = BN_num_bytes(&temp);
        if (tolen < n)
            return -1;
    }


    atop = a->dmax * BN_BYTES;
    if (atop == 0) {
        OPENSSL_cleanse(to, tolen);
        return tolen;
    }

    lasti = atop - 1;
    atop = a->top * BN_BYTES;
    if (endianess == big)
        to += tolen;
    for (i = 0, j = 0; j < (size_t)tolen; j++) {
        unsigned char val;
        l = a->d[i / BN_BYTES];
        mask = 0 - ((j - atop) >> (8 * sizeof(i) - 1));
        val = (unsigned char)(l >> (8 * (i % BN_BYTES)) & mask);
        if (endianess == big)
            *--to = val;
        else
            *to++ = val;
        i += (i - lasti) >> (8 * sizeof(i) - 1);
    }

    return tolen;
}
