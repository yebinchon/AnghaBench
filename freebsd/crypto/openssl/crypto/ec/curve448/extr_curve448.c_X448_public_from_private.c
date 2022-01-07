
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int x448_derive_public_key (int *,int const*) ;

void X448_public_from_private(uint8_t out_public_value[56],
                              const uint8_t private_key[56])
{
    x448_derive_public_key(out_public_value, private_key);
}
