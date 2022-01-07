
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int count; unsigned char* buf; int state; } ;
typedef TYPE_1__ crypto_hash_sha256_state ;


 int SHA256_Transform (int ,unsigned char const*,int *,int *) ;
 int sodium_memzero (void*,int) ;

int
crypto_hash_sha256_update(crypto_hash_sha256_state *state,
                          const unsigned char *in, unsigned long long inlen)
{
    uint32_t tmp32[64 + 8];
    unsigned long long i;
    unsigned long long r;

    if (inlen <= 0U) {
        return 0;
    }
    r = (unsigned long long) ((state->count >> 3) & 0x3f);

    state->count += ((uint64_t) inlen) << 3;
    if (inlen < 64 - r) {
        for (i = 0; i < inlen; i++) {
            state->buf[r + i] = in[i];
        }
        return 0;
    }
    for (i = 0; i < 64 - r; i++) {
        state->buf[r + i] = in[i];
    }
    SHA256_Transform(state->state, state->buf, &tmp32[0], &tmp32[64]);
    in += 64 - r;
    inlen -= 64 - r;

    while (inlen >= 64) {
        SHA256_Transform(state->state, in, &tmp32[0], &tmp32[64]);
        in += 64;
        inlen -= 64;
    }
    inlen &= 63;
    for (i = 0; i < inlen; i++) {
        state->buf[i] = in[i];
    }
    sodium_memzero((void *) tmp32, sizeof tmp32);

    return 0;
}
