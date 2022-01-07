
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_data; } ;
typedef TYPE_1__ EC_KEY ;


 int CRYPTO_set_ex_data (int *,int,void*) ;

int EC_KEY_set_ex_data(EC_KEY *key, int idx, void *arg)
{
    return CRYPTO_set_ex_data(&key->ex_data, idx, arg);
}
