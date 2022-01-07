
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int c448_error_t ;


 int EDDSA_448_PRIVATE_BYTES ;
 int X448_PRIVATE_BYTES ;
 int oneshot_hash (int *,int ,int const*,int ) ;

c448_error_t c448_ed448_convert_private_key_to_x448(
                            uint8_t x[X448_PRIVATE_BYTES],
                            const uint8_t ed [EDDSA_448_PRIVATE_BYTES])
{


    return oneshot_hash(x, X448_PRIVATE_BYTES, ed,
                        EDDSA_448_PRIVATE_BYTES);
}
