
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_data; } ;
typedef TYPE_1__ EC_KEY ;


 void* CRYPTO_get_ex_data (int *,int) ;

void *EC_KEY_get_ex_data(const EC_KEY *key, int idx)
{
    return CRYPTO_get_ex_data(&key->ex_data, idx);
}
