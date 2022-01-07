
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int* d; scalar_t__ neg; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int BN_BYTES ;
 int BN_F_BN_BN2HEX ;
 scalar_t__ BN_is_zero (TYPE_1__ const*) ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 void** Hex ;
 char* OPENSSL_malloc (int) ;
 char* OPENSSL_strdup (char*) ;

char *BN_bn2hex(const BIGNUM *a)
{
    int i, j, v, z = 0;
    char *buf;
    char *p;

    if (BN_is_zero(a))
        return OPENSSL_strdup("0");
    buf = OPENSSL_malloc(a->top * BN_BYTES * 2 + 2);
    if (buf == ((void*)0)) {
        BNerr(BN_F_BN_BN2HEX, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    p = buf;
    if (a->neg)
        *p++ = '-';
    for (i = a->top - 1; i >= 0; i--) {
        for (j = BN_BITS2 - 8; j >= 0; j -= 8) {

            v = (int)((a->d[i] >> j) & 0xff);
            if (z || v != 0) {
                *p++ = Hex[v >> 4];
                *p++ = Hex[v & 0x0f];
                z = 1;
            }
        }
    }
    *p = '\0';
 err:
    return buf;
}
