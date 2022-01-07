
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ prime_t ;
typedef scalar_t__ BN_ULONG ;
typedef int BIGNUM ;


 int BN_BITS2 ;
 scalar_t__ BN_MASK2 ;
 int BN_RAND_BOTTOM_ODD ;
 int BN_RAND_TOP_TWO ;
 int BN_add_word (int *,scalar_t__) ;
 scalar_t__ BN_get_word (int *) ;
 scalar_t__ BN_mod_word (int *,scalar_t__) ;
 int BN_num_bits (int *) ;
 int BN_priv_rand (int *,int,int ,int ) ;
 int NUMPRIMES ;
 int bn_check_top (int *) ;
 scalar_t__* primes ;

__attribute__((used)) static int probable_prime(BIGNUM *rnd, int bits, prime_t *mods)
{
    int i;
    BN_ULONG delta;
    BN_ULONG maxdelta = BN_MASK2 - primes[NUMPRIMES - 1];
    char is_single_word = bits <= BN_BITS2;

 again:

    if (!BN_priv_rand(rnd, bits, BN_RAND_TOP_TWO, BN_RAND_BOTTOM_ODD))
        return 0;

    for (i = 1; i < NUMPRIMES; i++) {
        BN_ULONG mod = BN_mod_word(rnd, (BN_ULONG)primes[i]);
        if (mod == (BN_ULONG)-1)
            return 0;
        mods[i] = (prime_t) mod;
    }




    if (is_single_word) {
        BN_ULONG size_limit;

        if (bits == BN_BITS2) {




            size_limit = ~((BN_ULONG)0) - BN_get_word(rnd);
        } else {
            size_limit = (((BN_ULONG)1) << bits) - BN_get_word(rnd) - 1;
        }
        if (size_limit < maxdelta)
            maxdelta = size_limit;
    }
    delta = 0;
 loop:
    if (is_single_word) {
        BN_ULONG rnd_word = BN_get_word(rnd);
        for (i = 1; i < NUMPRIMES && primes[i] < rnd_word; i++) {
            if ((mods[i] + delta) % primes[i] == 0) {
                delta += 2;
                if (delta > maxdelta)
                    goto again;
                goto loop;
            }
        }
    } else {
        for (i = 1; i < NUMPRIMES; i++) {




            if (((mods[i] + delta) % primes[i]) <= 1) {
                delta += 2;
                if (delta > maxdelta)
                    goto again;
                goto loop;
            }
        }
    }
    if (!BN_add_word(rnd, delta))
        return 0;
    if (BN_num_bits(rnd) != bits)
        goto again;
    bn_check_top(rnd);
    return 1;
}
