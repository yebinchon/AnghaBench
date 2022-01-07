
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int bn_check_top (int *) ;

void bn_init(BIGNUM *a)
{
    static BIGNUM nilbn;

    *a = nilbn;
    bn_check_top(a);
}
