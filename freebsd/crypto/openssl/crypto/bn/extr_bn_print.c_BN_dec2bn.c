
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ top; int neg; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_DEC_CONV ;
 int BN_DEC_NUM ;
 int BN_add_word (TYPE_1__*,int) ;
 int BN_free (TYPE_1__*) ;
 int BN_mul_word (TYPE_1__*,int ) ;
 TYPE_1__* BN_new () ;
 int BN_zero (TYPE_1__*) ;
 int INT_MAX ;
 int bn_check_top (TYPE_1__*) ;
 int bn_correct_top (TYPE_1__*) ;
 int * bn_expand (TYPE_1__*,int) ;
 scalar_t__ ossl_isdigit (char const) ;

int BN_dec2bn(BIGNUM **bn, const char *a)
{
    BIGNUM *ret = ((void*)0);
    BN_ULONG l = 0;
    int neg = 0, i, j;
    int num;

    if (a == ((void*)0) || *a == '\0')
        return 0;
    if (*a == '-') {
        neg = 1;
        a++;
    }

    for (i = 0; i <= INT_MAX / 4 && ossl_isdigit(a[i]); i++)
        continue;

    if (i == 0 || i > INT_MAX / 4)
        goto err;

    num = i + neg;
    if (bn == ((void*)0))
        return num;





    if (*bn == ((void*)0)) {
        if ((ret = BN_new()) == ((void*)0))
            return 0;
    } else {
        ret = *bn;
        BN_zero(ret);
    }


    if (bn_expand(ret, i * 4) == ((void*)0))
        goto err;

    j = BN_DEC_NUM - i % BN_DEC_NUM;
    if (j == BN_DEC_NUM)
        j = 0;
    l = 0;
    while (--i >= 0) {
        l *= 10;
        l += *a - '0';
        a++;
        if (++j == BN_DEC_NUM) {
            if (!BN_mul_word(ret, BN_DEC_CONV)
                || !BN_add_word(ret, l))
                goto err;
            l = 0;
            j = 0;
        }
    }

    bn_correct_top(ret);
    *bn = ret;
    bn_check_top(ret);

    if (ret->top != 0)
        ret->neg = neg;
    return num;
 err:
    if (*bn == ((void*)0))
        BN_free(ret);
    return 0;
}
