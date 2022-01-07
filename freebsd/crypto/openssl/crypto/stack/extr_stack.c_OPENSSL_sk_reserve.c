
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_STACK ;


 int sk_reserve (int *,int,int) ;

int OPENSSL_sk_reserve(OPENSSL_STACK *st, int n)
{
    if (st == ((void*)0))
        return 0;

    if (n < 0)
        return 1;
    return sk_reserve(st, n, 1);
}
