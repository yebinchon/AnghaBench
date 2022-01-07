
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned int top; long* d; scalar_t__ neg; } ;
typedef long BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 unsigned int BN_BYTES ;
 int BN_free (TYPE_1__*) ;
 TYPE_1__* BN_new () ;
 int bn_check_top (TYPE_1__*) ;
 int bn_correct_top (TYPE_1__*) ;
 int * bn_wexpand (TYPE_1__*,int) ;

BIGNUM *BN_lebin2bn(const unsigned char *s, int len, BIGNUM *ret)
{
    unsigned int i, m;
    unsigned int n;
    BN_ULONG l;
    BIGNUM *bn = ((void*)0);

    if (ret == ((void*)0))
        ret = bn = BN_new();
    if (ret == ((void*)0))
        return ((void*)0);
    bn_check_top(ret);
    s += len;

    for ( ; len > 0 && s[-1] == 0; s--, len--)
        continue;
    n = len;
    if (n == 0) {
        ret->top = 0;
        return ret;
    }
    i = ((n - 1) / BN_BYTES) + 1;
    m = ((n - 1) % (BN_BYTES));
    if (bn_wexpand(ret, (int)i) == ((void*)0)) {
        BN_free(bn);
        return ((void*)0);
    }
    ret->top = i;
    ret->neg = 0;
    l = 0;
    while (n--) {
        s--;
        l = (l << 8L) | *s;
        if (m-- == 0) {
            ret->d[--i] = l;
            l = 0;
            m = BN_BYTES - 1;
        }
    }




    bn_correct_top(ret);
    return ret;
}
