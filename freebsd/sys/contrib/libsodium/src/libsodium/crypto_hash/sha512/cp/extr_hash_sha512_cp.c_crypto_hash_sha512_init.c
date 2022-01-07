
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* count; int state; } ;
typedef TYPE_1__ crypto_hash_sha512_state ;


 int memcpy (int ,int const*,int) ;

int
crypto_hash_sha512_init(crypto_hash_sha512_state *state)
{
    static const uint64_t sha512_initial_state[8] = {
        0x6a09e667f3bcc908ULL, 0xbb67ae8584caa73bULL, 0x3c6ef372fe94f82bULL,
        0xa54ff53a5f1d36f1ULL, 0x510e527fade682d1ULL, 0x9b05688c2b3e6c1fULL,
        0x1f83d9abfb41bd6bULL, 0x5be0cd19137e2179ULL
    };

    state->count[0] = state->count[1] = (uint64_t) 0U;
    memcpy(state->state, sha512_initial_state, sizeof sha512_initial_state);

    return 0;
}
