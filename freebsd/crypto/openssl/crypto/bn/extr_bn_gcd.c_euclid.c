
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ BN_cmp (int *,int *) ;
 scalar_t__ BN_is_odd (int *) ;
 int BN_is_zero (int *) ;
 int BN_lshift (int *,int *,int) ;
 int BN_rshift1 (int *,int *) ;
 int BN_sub (int *,int *,int *) ;
 int bn_check_top (int *) ;

__attribute__((used)) static BIGNUM *euclid(BIGNUM *a, BIGNUM *b)
{
    BIGNUM *t;
    int shifts = 0;

    bn_check_top(a);
    bn_check_top(b);


    while (!BN_is_zero(b)) {


        if (BN_is_odd(a)) {
            if (BN_is_odd(b)) {
                if (!BN_sub(a, a, b))
                    goto err;
                if (!BN_rshift1(a, a))
                    goto err;
                if (BN_cmp(a, b) < 0) {
                    t = a;
                    a = b;
                    b = t;
                }
            } else {

                if (!BN_rshift1(b, b))
                    goto err;
                if (BN_cmp(a, b) < 0) {
                    t = a;
                    a = b;
                    b = t;
                }
            }
        } else {

            if (BN_is_odd(b)) {
                if (!BN_rshift1(a, a))
                    goto err;
                if (BN_cmp(a, b) < 0) {
                    t = a;
                    a = b;
                    b = t;
                }
            } else {

                if (!BN_rshift1(a, a))
                    goto err;
                if (!BN_rshift1(b, b))
                    goto err;
                shifts++;
            }
        }

    }

    if (shifts) {
        if (!BN_lshift(a, a, shifts))
            goto err;
    }
    bn_check_top(a);
    return a;
 err:
    return ((void*)0);
}
