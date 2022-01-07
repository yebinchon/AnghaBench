
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _crypto_generichash_blake2b_pick_best_implementation () ;
 int _crypto_onetimeauth_poly1305_pick_best_implementation () ;
 int _crypto_pwhash_argon2_pick_best_implementation () ;
 int _crypto_scalarmult_curve25519_pick_best_implementation () ;
 int _crypto_stream_chacha20_pick_best_implementation () ;
 int _crypto_stream_salsa20_pick_best_implementation () ;
 int _sodium_alloc_init () ;
 int _sodium_runtime_get_cpu_features () ;
 int initialized ;
 int randombytes_stir () ;
 scalar_t__ sodium_crit_enter () ;
 scalar_t__ sodium_crit_leave () ;

int
sodium_init(void)
{
    if (sodium_crit_enter() != 0) {
        return -1;
    }
    if (initialized != 0) {
        if (sodium_crit_leave() != 0) {
            return -1;
        }
        return 1;
    }
    _sodium_runtime_get_cpu_features();
    randombytes_stir();
    _sodium_alloc_init();
    _crypto_pwhash_argon2_pick_best_implementation();
    _crypto_generichash_blake2b_pick_best_implementation();
    _crypto_onetimeauth_poly1305_pick_best_implementation();
    _crypto_scalarmult_curve25519_pick_best_implementation();
    _crypto_stream_chacha20_pick_best_implementation();
    _crypto_stream_salsa20_pick_best_implementation();
    initialized = 1;
    if (sodium_crit_leave() != 0) {
        return -1;
    }
    return 0;
}
