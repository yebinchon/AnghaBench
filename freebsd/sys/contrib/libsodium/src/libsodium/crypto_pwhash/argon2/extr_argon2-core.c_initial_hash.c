
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int value ;
typedef int const uint8_t ;
typedef int uint32_t ;
typedef int crypto_generichash_blake2b_state ;
typedef scalar_t__ argon2_type ;
struct TYPE_3__ {int lanes; int outlen; int m_cost; int t_cost; int pwdlen; int flags; int saltlen; int secretlen; int adlen; int * ad; int * secret; int * salt; int * pwd; } ;
typedef TYPE_1__ argon2_context ;


 int ARGON2_FLAG_CLEAR_PASSWORD ;
 int ARGON2_FLAG_CLEAR_SECRET ;
 int ARGON2_PREHASH_DIGEST_LENGTH ;
 int ARGON2_VERSION_NUMBER ;
 int STORE32_LE (int const*,int) ;
 int crypto_generichash_blake2b_final (int *,int const*,int ) ;
 int crypto_generichash_blake2b_init (int *,int *,unsigned int,int ) ;
 int crypto_generichash_blake2b_update (int *,int const*,int) ;
 int sodium_memzero (int *,int) ;

void
initial_hash(uint8_t *blockhash, argon2_context *context, argon2_type type)
{
    crypto_generichash_blake2b_state BlakeHash;
    uint8_t value[4U ];

    if (((void*)0) == context || ((void*)0) == blockhash) {
        return;
    }

    crypto_generichash_blake2b_init(&BlakeHash, ((void*)0), 0U,
                                    ARGON2_PREHASH_DIGEST_LENGTH);

    STORE32_LE(value, context->lanes);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));

    STORE32_LE(value, context->outlen);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));

    STORE32_LE(value, context->m_cost);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));

    STORE32_LE(value, context->t_cost);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));

    STORE32_LE(value, ARGON2_VERSION_NUMBER);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));

    STORE32_LE(value, (uint32_t) type);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));

    STORE32_LE(value, context->pwdlen);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));

    if (context->pwd != ((void*)0)) {
        crypto_generichash_blake2b_update(
            &BlakeHash, (const uint8_t *) context->pwd, context->pwdlen);


        if (context->flags & ARGON2_FLAG_CLEAR_PASSWORD) {
            sodium_memzero(context->pwd, context->pwdlen);
            context->pwdlen = 0;
        }

    }

    STORE32_LE(value, context->saltlen);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));

    if (context->salt != ((void*)0)) {
        crypto_generichash_blake2b_update(
            &BlakeHash, (const uint8_t *) context->salt, context->saltlen);
    }

    STORE32_LE(value, context->secretlen);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));


    if (context->secret != ((void*)0)) {
        crypto_generichash_blake2b_update(
            &BlakeHash, (const uint8_t *) context->secret, context->secretlen);

        if (context->flags & ARGON2_FLAG_CLEAR_SECRET) {
            sodium_memzero(context->secret, context->secretlen);
            context->secretlen = 0;
        }
    }


    STORE32_LE(value, context->adlen);
    crypto_generichash_blake2b_update(&BlakeHash, value, sizeof(value));


    if (context->ad != ((void*)0)) {
        crypto_generichash_blake2b_update(
            &BlakeHash, (const uint8_t *) context->ad, context->adlen);
    }


    crypto_generichash_blake2b_final(&BlakeHash, blockhash,
                                     ARGON2_PREHASH_DIGEST_LENGTH);
}
