
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ C448_SUCCESS ;
 scalar_t__ c448_ed448_derive_public_key (int *,int const*) ;

int ED448_public_from_private(uint8_t out_public_key[57],
                              const uint8_t private_key[57])
{
    return c448_ed448_derive_public_key(out_public_key, private_key)
        == C448_SUCCESS;
}
