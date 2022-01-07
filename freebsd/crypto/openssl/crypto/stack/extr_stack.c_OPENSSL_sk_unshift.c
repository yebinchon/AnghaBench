
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_STACK ;


 int OPENSSL_sk_insert (int *,void const*,int ) ;

int OPENSSL_sk_unshift(OPENSSL_STACK *st, const void *data)
{
    return OPENSSL_sk_insert(st, data, 0);
}
