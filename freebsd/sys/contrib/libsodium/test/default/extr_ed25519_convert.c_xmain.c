
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int crypto_hash_sha512 (unsigned char*,int ,int) ;
 int crypto_hash_sha512_BYTES ;
 int crypto_scalarmult_curve25519_BYTES ;
 int crypto_scalarmult_curve25519_base (unsigned char*,unsigned char*) ;
 int crypto_sign_ed25519_PUBLICKEYBYTES ;
 int crypto_sign_ed25519_SECRETKEYBYTES ;
 int crypto_sign_ed25519_SEEDBYTES ;
 int crypto_sign_ed25519_keypair (unsigned char*,unsigned char*) ;
 int crypto_sign_ed25519_pk_to_curve25519 (unsigned char*,unsigned char*) ;
 int crypto_sign_ed25519_seed_keypair (unsigned char*,unsigned char*,unsigned char*) ;
 int crypto_sign_ed25519_sk_to_curve25519 (unsigned char*,unsigned char*) ;
 int keypair_seed ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 int printf (char*,...) ;
 int sodium_bin2hex (char*,int,unsigned char*,int) ;
 int sodium_hex2bin (unsigned char*,int,char*,int,int *,int *,int *) ;

int
main(void)
{
    unsigned char ed25519_pk[crypto_sign_ed25519_PUBLICKEYBYTES];
    unsigned char ed25519_skpk[crypto_sign_ed25519_SECRETKEYBYTES];
    unsigned char curve25519_pk[crypto_scalarmult_curve25519_BYTES];
    unsigned char curve25519_pk2[crypto_scalarmult_curve25519_BYTES];
    unsigned char curve25519_sk[crypto_scalarmult_curve25519_BYTES];
    char curve25519_pk_hex[crypto_scalarmult_curve25519_BYTES * 2 + 1];
    char curve25519_sk_hex[crypto_scalarmult_curve25519_BYTES * 2 + 1];
    unsigned char hseed[crypto_hash_sha512_BYTES];
    unsigned int i;

    assert(crypto_sign_ed25519_SEEDBYTES <= crypto_hash_sha512_BYTES);



    memcpy(hseed, keypair_seed, crypto_sign_ed25519_SEEDBYTES);

    crypto_sign_ed25519_seed_keypair(ed25519_pk, ed25519_skpk, hseed);

    if (crypto_sign_ed25519_pk_to_curve25519(curve25519_pk, ed25519_pk) != 0) {
        printf("conversion failed\n");
    }
    crypto_sign_ed25519_sk_to_curve25519(curve25519_sk, ed25519_skpk);
    sodium_bin2hex(curve25519_pk_hex, sizeof curve25519_pk_hex, curve25519_pk,
                   sizeof curve25519_pk);
    sodium_bin2hex(curve25519_sk_hex, sizeof curve25519_sk_hex, curve25519_sk,
                   sizeof curve25519_sk);

    printf("curve25519 pk: [%s]\n", curve25519_pk_hex);
    printf("curve25519 sk: [%s]\n", curve25519_sk_hex);

    for (i = 0U; i < 500U; i++) {
        crypto_sign_ed25519_keypair(ed25519_pk, ed25519_skpk);
        if (crypto_sign_ed25519_pk_to_curve25519(curve25519_pk, ed25519_pk) !=
            0) {
            printf("conversion failed\n");
        }
        crypto_sign_ed25519_sk_to_curve25519(curve25519_sk, ed25519_skpk);
        crypto_scalarmult_curve25519_base(curve25519_pk2, curve25519_sk);
        if (memcmp(curve25519_pk, curve25519_pk2, sizeof curve25519_pk) != 0) {
            printf("conversion failed\n");
        }
    }

    sodium_hex2bin(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0000000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, ((void*)0), ((void*)0), ((void*)0));
    assert(crypto_sign_ed25519_pk_to_curve25519(curve25519_pk, ed25519_pk) == -1);
    sodium_hex2bin(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0200000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, ((void*)0), ((void*)0), ((void*)0));
    assert(crypto_sign_ed25519_pk_to_curve25519(curve25519_pk, ed25519_pk) == -1);
    sodium_hex2bin(ed25519_pk, crypto_sign_ed25519_PUBLICKEYBYTES,
                   "0500000000000000000000000000000000000000000000000000000000000000"
                   "0000000000000000000000000000000000000000000000000000000000000000",
                   64, ((void*)0), ((void*)0), ((void*)0));
    assert(crypto_sign_ed25519_pk_to_curve25519(curve25519_pk, ed25519_pk) == -1);

    printf("ok\n");

    return 0;
}
