
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_scalarmult_curve25519_ref10_implementation ;
 int crypto_scalarmult_curve25519_sandy2x_implementation ;
 int * implementation ;
 scalar_t__ sodium_runtime_has_avx () ;

int
_crypto_scalarmult_curve25519_pick_best_implementation(void)
{
    implementation = &crypto_scalarmult_curve25519_ref10_implementation;






    return 0;
}
