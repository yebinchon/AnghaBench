
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct chacha_ctx {int dummy; } ;


 int STORE32_LE (int *,int ) ;
 int U32V (int) ;
 int chacha20_encrypt_bytes (struct chacha_ctx*,unsigned char const*,unsigned char*,unsigned long long) ;
 int chacha_ivsetup (struct chacha_ctx*,unsigned char const*,int *) ;
 int chacha_keysetup (struct chacha_ctx*,unsigned char const*) ;
 int sodium_memzero (struct chacha_ctx*,int) ;

__attribute__((used)) static int
stream_ref_xor_ic(unsigned char *c, const unsigned char *m,
                  unsigned long long mlen, const unsigned char *n, uint64_t ic,
                  const unsigned char *k)
{
    struct chacha_ctx ctx;
    uint8_t ic_bytes[8];
    uint32_t ic_high;
    uint32_t ic_low;

    if (!mlen) {
        return 0;
    }
    ic_high = U32V(ic >> 32);
    ic_low = U32V(ic);
    STORE32_LE(&ic_bytes[0], ic_low);
    STORE32_LE(&ic_bytes[4], ic_high);
    chacha_keysetup(&ctx, k);
    chacha_ivsetup(&ctx, n, ic_bytes);
    chacha20_encrypt_bytes(&ctx, m, c, mlen);
    sodium_memzero(&ctx, sizeof ctx);

    return 0;
}
