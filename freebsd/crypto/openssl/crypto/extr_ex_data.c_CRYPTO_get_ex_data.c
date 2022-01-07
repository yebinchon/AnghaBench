
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sk; } ;
typedef TYPE_1__ CRYPTO_EX_DATA ;


 int sk_void_num (int *) ;
 void* sk_void_value (int *,int) ;

void *CRYPTO_get_ex_data(const CRYPTO_EX_DATA *ad, int idx)
{
    if (ad->sk == ((void*)0) || idx >= sk_void_num(ad->sk))
        return ((void*)0);
    return sk_void_value(ad->sk, idx);
}
