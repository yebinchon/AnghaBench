
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* count; unsigned char* buf; int state; } ;
typedef TYPE_1__ crypto_hash_sha512_state ;


 int SHA512_Transform (int ,unsigned char const*,int*,int*) ;
 int sodium_memzero (void*,int) ;

int
crypto_hash_sha512_update(crypto_hash_sha512_state *state,
                          const unsigned char *in, unsigned long long inlen)
{
    uint64_t tmp64[80 + 8];
    uint64_t bitlen[2];
    unsigned long long i;
    unsigned long long r;

    if (inlen <= 0U) {
        return 0;
    }
    r = (unsigned long long) ((state->count[1] >> 3) & 0x7f);

    bitlen[1] = ((uint64_t) inlen) << 3;
    bitlen[0] = ((uint64_t) inlen) >> 61;

    if ((state->count[1] += bitlen[1]) < bitlen[1]) {
        state->count[0]++;
    }

    state->count[0] += bitlen[0];
    if (inlen < 128 - r) {
        for (i = 0; i < inlen; i++) {
            state->buf[r + i] = in[i];
        }
        return 0;
    }
    for (i = 0; i < 128 - r; i++) {
        state->buf[r + i] = in[i];
    }
    SHA512_Transform(state->state, state->buf, &tmp64[0], &tmp64[80]);
    in += 128 - r;
    inlen -= 128 - r;

    while (inlen >= 128) {
        SHA512_Transform(state->state, in, &tmp64[0], &tmp64[80]);
        in += 128;
        inlen -= 128;
    }
    inlen &= 127;
    for (i = 0; i < inlen; i++) {
        state->buf[i] = in[i];
    }
    sodium_memzero((void *) tmp64, sizeof tmp64);

    return 0;
}
